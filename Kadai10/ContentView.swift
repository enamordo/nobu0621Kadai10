//
//  ContentView.swift
//  Kadai10
//
//  Created by nobu0621 on 2024/09/14.
//

import SwiftUI

let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]

// Listの背景色
let colors = [Color.red, Color.green, Color.blue]

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(prefectures.indices, id: \.self) { item in
                HStack {
                    Text(prefectures[item])
                    Spacer()
                    Text(String(item + 1) + "番目の都道府県です")
                }
                .listRowBackground(colors[item % 3].opacity(0.3))
            }
            .listStyle(.inset)
            .toolbar(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
