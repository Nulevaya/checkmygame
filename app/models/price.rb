class Price < ApplicationRecord
  belongs_to :platform_game_release

  enum currency: { rub: 0, usd: 1, eur: 2, aud: 3, cad: 4, czk: 5, dkk: 6, mxn: 7, nzd: 8, nok: 9, pln: 10, zar: 11, sek: 12, chf: 13, gbp: 14 }
end