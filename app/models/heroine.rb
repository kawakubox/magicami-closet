# frozen_string_literal: true

class Heroine < ActiveHash::Base
  # rubocop:disable Metrics/LineLength,Layout/ExtraSpacing
  self.data = [
    { id: 1,  first_name: 'いろは',     family_name: '遊部',   blood_type: 'B',  birthday: '4月8日',   height: 158, weight: 48, bust: 85, waist: 59, hip: 88 },
    { id: 2,  first_name: '花織',       family_name: '朝永',   blood_type: 'O',  birthday: '7月8日',   height: 155, weight: 43, bust: 74, waist: 60, hip: 86 },
    { id: 3,  first_name: 'セイラ',     family_name: '袖城',   blood_type: 'A',  birthday: '3月9日',   height: 167, weight: 51, bust: 80, waist: 54, hip: 80 },
    { id: 4,  first_name: 'ここあ',     family_name: '百波瀬', blood_type: 'B',  birthday: '10月19日', height: 149, weight: 48, bust: 89, waist: 57, hip: 86 },
    { id: 5,  first_name: '陽彩',       family_name: '東山',   blood_type: 'A',  birthday: '1月9日',   height: 145, weight: 37, bust: 71, waist: 53, hip: 72 },
    { id: 6,  first_name: '蒼',         family_name: '大鳥',   blood_type: 'A',  birthday: '12月13日', height: 174, weight: 60, bust: 85, waist: 59, hip: 87 },
    { id: 7,  first_name: '丹',         family_name: '大鳥',   blood_type: 'B',  birthday: '12月13日', height: 170, weight: 57, bust: 95, waist: 62, hip: 98 },
    { id: 8,  first_name: 'エリザ',     family_name: '雪船',   blood_type: 'AB', birthday: '6月17日',  height: 161, weight: 47, bust: 83, waist: 55, hip: 81 },
    { id: 9,  first_name: 'りり',       family_name: '槍水',   blood_type: 'AB', birthday: '8月7日',   height: 156, weight: 50, bust: 92, waist: 58, hip: 84 },
    { id: 10, first_name: 'はなび',     family_name: '環',     blood_type: 'A',  birthday: '9月5日',   height: 162, weight: 51, bust: 80, waist: 56, hip: 80 },
    { id: 11, first_name: 'マリアンヌ', family_name: '丘田',   blood_type: 'O',  birthday: '5月25日',  height: 169, weight: 58, bust: 89, waist: 58, hip: 88 },
    { id: 12, first_name: '依子',       family_name: '及川',   blood_type: 'O',  birthday: '11月6日',  height: 152, weight: 78, bust: 54, waist: 80, hip: 80 }
  ]
  # rubocop:enable Metrics/LineLength,Layout/ExtraSpacing
end
