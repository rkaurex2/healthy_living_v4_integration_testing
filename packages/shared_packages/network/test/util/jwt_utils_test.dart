import 'package:flutter_test/flutter_test.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:network/network.dart';

const pastDateJwtToken =
    "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6Ik1UY3lOVFkzTkRRd013PT0iLCJ0eXAiOiJKV1QifQ.eyJhenAiOiI5M2U1ODg1MzUwNGU0NzNiODY4NGY2OWZlOGMwZTRiZiIsImRlc2lkIjoicnJhc3RvZ2ktc2xiLWNvbS1hMGM2NjI4NUBkZXNpZC5kZWxmaS5zbGIuY29tIiwiZW1haWwiOiJycmFzdG9naUBzbGIuY29tIiwic3ViaWQiOiJnbE8zU3luNUp5WXI4Q1NpQmRpMm16YzlOdmJKb3BvcGE3VzZSbE1waS1JIiwib2lkIjoiNzdiNTk3ZWEtMTZmYy00NDRmLTg5Y2EtYWExNGI0Y2Y3M2EzIiwidmVyIjoiMi4wIiwiaXNzIjoiaHR0cHM6Ly9wNGQuY3NpLmNsb3VkLnNsYi1kcy5jb20vdjIiLCJzdWIiOiJycmFzdG9naUBzbGIuY29tIiwiYXVkIjoiOTNlNTg4NTM1MDRlNDczYjg2ODRmNjlmZThjMGU0YmYiLCJleHAiOjE3MjUwMDAwMDAsImlhdCI6MTcyMDAwMDAwMCwianRpIjoiYXQuNGE2YmExYWZhNTUwNDUzODllZjRmNTk3OWRmNmIxYTciLCJ0aWQiOiI0MWZmMjZkYy0yNTBmLTRiMTMtODk4MS03MzliZTg2MTBjMjEifQ.l4SROtojgNa0wuwKqVgVaSoMZRBboXeUNc_5A0p1TKOiCUqLXYMwpklo_mDnmhn1Aap8vrCn__9J3aDlMG65eP9K2I-J4chJL5ONwTsQNHYKgv05ObKVOQzl1pJcgGc5wBwTNS4LtfipAxCu-4dBTAgHPfDLRwPQzx04XtYezlyALL8RA6atQ2Xl4SVIROIwf3T-HnGr9MNc17wSTHwc0eJ5OMIoQZ6xWq2CFmG6v8zWYfwpj7L3qTEtK3-3-xm66FkqLJ6Bd0KvQzMfUTwteccvVX0rhBh1_x1IkREjpKOOA--N-3a0FMt0_TDXfXpzVfKOGcQ4d4u_aI_FAtEabg";

const futureDateJwtToken =
    "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6Ik1UY3lOVFkzTkRRd013PT0iLCJ0eXAiOiJKV1QifQ.eyJhenAiOiI5M2U1ODg1MzUwNGU0NzNiODY4NGY2OWZlOGMwZTRiZiIsImRlc2lkIjoicnJhc3RvZ2ktc2xiLWNvbS1hMGM2NjI4NUBkZXNpZC5kZWxmaS5zbGIuY29tIiwiZW1haWwiOiJycmFzdG9naUBzbGIuY29tIiwic3ViaWQiOiJnbE8zU3luNUp5WXI4Q1NpQmRpMm16YzlOdmJKb3BvcGE3VzZSbE1waS1JIiwib2lkIjoiNzdiNTk3ZWEtMTZmYy00NDRmLTg5Y2EtYWExNGI0Y2Y3M2EzIiwidmVyIjoiMi4wIiwiaXNzIjoiaHR0cHM6Ly9wNGQuY3NpLmNsb3VkLnNsYi1kcy5jb20vdjIiLCJzdWIiOiJycmFzdG9naUBzbGIuY29tIiwiYXVkIjoiOTNlNTg4NTM1MDRlNDczYjg2ODRmNjlmZThjMGU0YmYiLCJleHAiOjIyMzA2NTEwMDAsImlhdCI6MjIzMDYwMDAwMCwianRpIjoiYXQuNGE2YmExYWZhNTUwNDUzODllZjRmNTk3OWRmNmIxYTciLCJ0aWQiOiI0MWZmMjZkYy0yNTBmLTRiMTMtODk4MS03MzliZTg2MTBjMjEifQ.5EB1C906-Vybo5e_1cr5psHLDJx8RygUqk2I2Os93L3K0H1aDl_nmZq26o-aXunlQDHLeLZbaoBOH_vUnABEHg3bV9ZnIytZva1AMVcKymFYlNSPh_sOFXvGUbFbA0btyBi1oa0ot4LFxk5eMs-Sjnm2Gyv8U9RMW9axiLdPjzuYmlvQp0_bNBtzeSAa_HSs377vU5tyVEKxdRpxACfXSkNjlOVfHLVicEhbBOsiFCgSFb7l8-xyM8JWPPc5UCogQFgkU0mwmqLPjramrS5yItMBR70sDvMJg_cwYjl524G7q4d2v6PQYvTmXtLKD4Le3lBzPY9onjLAccRPHj33WA";

void main() {
  group("JwtUtils#isTokenExpired() unit tests", () {
    test("isTokenExpired() should return TRUE for past date JWT token", () {
      final isExpired = JwtUtils.isTokenExpired(pastDateJwtToken);
      expect(isExpired, true);
    });

    test("isTokenExpired() should return TRUE for invalid JWT token", () {
      final isExpired = JwtUtils.isTokenExpired(null);
      expect(isExpired, true);
    });

    test("isTokenExpired() should return FALSE for future date JWT token", () {
      final isExpired = JwtUtils.isTokenExpired(futureDateJwtToken);
      expect(isExpired, false);
    });
  });

  group("JwtUtils#isTokenNearExpired() unit tests", () {
    test("isTokenNearExpired() should return TRUE for past date JWT token", () {
      final isExpired = JwtUtils.isTokenAboutToExpire(pastDateJwtToken);
      expect(isExpired, true);
    });

    test("isTokenNearExpired() should return TRUE for invalid JWT token", () {
      final isExpired = JwtUtils.isTokenAboutToExpire(null);
      expect(isExpired, true);
    });

    test(
      "isTokenNearExpired() should return FALSE for future date JWT token",
      () {
        final isExpired = JwtUtils.isTokenAboutToExpire(futureDateJwtToken);
        expect(isExpired, false);
      },
    );
  });

  group(
    "JwtUtils#getTokenExpiryRemainingDuration() unit tests for about to expired scenarios",
    () {
      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for past date JWT token",
        () {
          final expirationDate = JwtDecoder.getExpirationDate(pastDateJwtToken);

          final aboutToExpireDate = expirationDate.subtract(
            nearExpirationTokenDurationOffset,
          );
          final calculatedDuration = Duration(
            milliseconds:
                (aboutToExpireDate.millisecondsSinceEpoch -
                    DateTime.now().millisecondsSinceEpoch),
          );

          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            pastDateJwtToken,
            true,
          );

          expect(calculatedDuration.inMinutes, remainingDuration.inMinutes);
        },
      );

      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for future date JWT token",
        () {
          final expirationDate = JwtDecoder.getExpirationDate(
            futureDateJwtToken,
          );

          final aboutToExpireDate = expirationDate.subtract(
            nearExpirationTokenDurationOffset,
          );
          final calculatedDuration = Duration(
            milliseconds:
                (aboutToExpireDate.millisecondsSinceEpoch -
                    DateTime.now().millisecondsSinceEpoch),
          );

          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            futureDateJwtToken,
            true,
          );

          expect(calculatedDuration.inMinutes, remainingDuration.inMinutes);
        },
      );

      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for invalid JWT token",
        () {
          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            null,
            true,
          );

          expect(remainingDuration.inMinutes, 0);
        },
      );
    },
  );

  group(
    "JwtUtils#getTokenExpiryRemainingDuration() unit tests for completely expired scenarios",
    () {
      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for past date JWT token",
        () {
          final expirationDate = JwtDecoder.getExpirationDate(pastDateJwtToken);

          final calculatedDuration = Duration(
            milliseconds:
                (expirationDate.millisecondsSinceEpoch -
                    DateTime.now().millisecondsSinceEpoch),
          );

          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            pastDateJwtToken,
            false,
          );

          expect(calculatedDuration.inMinutes, remainingDuration.inMinutes);
        },
      );

      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for future date JWT token",
        () {
          final expirationDate = JwtDecoder.getExpirationDate(
            futureDateJwtToken,
          );

          final calculatedDuration = Duration(
            milliseconds:
                (expirationDate.millisecondsSinceEpoch -
                    DateTime.now().millisecondsSinceEpoch),
          );

          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            futureDateJwtToken,
            false,
          );

          expect(calculatedDuration.inMinutes, remainingDuration.inMinutes);
        },
      );

      test(
        "getTokenExpiryRemainingDuration() should return correct remaining duration MINUTES for invalid JWT token",
        () {
          final remainingDuration = JwtUtils.getTokenExpiryRemainingDuration(
            null,
            false,
          );

          expect(remainingDuration.inMinutes, 0);
        },
      );
    },
  );

  group(
    "JwtUtils#getIssuedAtTimestamp() unit tests for about to expired scenarios",
    () {
      test(
        "getIssuedAtTimestamp() gives correct issuedAt for past date access token",
        () {
          final issuedAtTimestamp = JwtUtils.getIssuedAtTimestamp(
            pastDateJwtToken,
          );

          expect(issuedAtTimestamp, 1720000000);
        },
      );

      test(
        "getIssuedAtTimestamp() gives correct issuedAt for future date access token",
        () {
          final issuedAtTimestamp = JwtUtils.getIssuedAtTimestamp(
            pastDateJwtToken,
          );

          expect(issuedAtTimestamp, 1720000000);
        },
      );

      test("getIssuedAtTimestamp() gives null for for null access token", () {
        final issuedAtTimestamp = JwtUtils.getIssuedAtTimestamp(null);

        expect(issuedAtTimestamp, null);
      });

      test("getIssuedAtTimestamp() gives null for for empty access token", () {
        final issuedAtTimestamp = JwtUtils.getIssuedAtTimestamp("");

        expect(issuedAtTimestamp, null);
      });

      test("getIssuedAtTimestamp() gives null for for empty access token", () {
        final issuedAtTimestamp = JwtUtils.getIssuedAtTimestamp("ABCDEFG");

        expect(issuedAtTimestamp, null);
      });
    },
  );

  group(
    "JwtUtils#getExpiredAtTimestamp() unit tests for about to expired scenarios",
    () {
      test(
        "getExpiredAtTimestamp() gives correct issuedAt for past date access token",
        () {
          final expiredAtTimestamp = JwtUtils.getExpiredAtTimestamp(
            pastDateJwtToken,
          );

          expect(expiredAtTimestamp, 1725000000);
        },
      );

      test(
        "getExpiredAtTimestamp() gives correct issuedAt for future date access token",
        () {
          final expiredAtTimestamp = JwtUtils.getExpiredAtTimestamp(
            pastDateJwtToken,
          );

          expect(expiredAtTimestamp, 1725000000);
        },
      );

      test("getExpiredAtTimestamp() gives null for for null access token", () {
        final expiredAtTimestamp = JwtUtils.getExpiredAtTimestamp(null);

        expect(expiredAtTimestamp, null);
      });

      test("getExpiredAtTimestamp() gives null for for null access token", () {
        final expiredAtTimestamp = JwtUtils.getExpiredAtTimestamp(null);

        expect(expiredAtTimestamp, null);
      });

      test(
        "getExpiredAtTimestamp() gives null for for invalid access token",
        () {
          final expiredAtTimestamp = JwtUtils.getIssuedAtTimestamp("ABCDEFG");

          expect(expiredAtTimestamp, null);
        },
      );
    },
  );
}
