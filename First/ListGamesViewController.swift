//
//  ListGamesViewController.swift
//  First
//
//  Created by Ilya on 01.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

class ListGamesViewController: UIViewController {

    @IBOutlet weak var gameTableView: UITableView!
    let cellID = "game"
    var games : [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGames()

    }

    func setupGames() {
        games = [Game(year:2018, image: "GOW.jpg", name: "God of War",
                      description: """
                        Прошло много лет с тех пор, как Кратос свершил свою месть над богами Олимпа и даровал силу Надежды всему человечеству. С этим грузом за плечами, Кратос покинул Грецию и  ныне живёт отшельнической жизнью на далёком севере, в суровом мире Скандинавских богов и монстров, именуемом местными Мидгардом. Однако, удивительно для себя, он нашёл любовь в лице смертной женщины-воина Фэй, которая родила от спартанца сына Атрея. Мальчик рос с матерью, которая учила его охоте и стрельбе из лука «Когтя», которая сама ему сделала, разным языкам в Девяти Миров, а также рассказывала ему о богах и обитателях Мидгарда. В то время Кратос мало уделял внимания сыну, предпочитая своё одиночество, стараясь скрыть как своё прошлое, так свою божественную сущность. Однако судьба вновь сыграла злую шутку с Призраком Спарты — Фэй умерла, оставив Кратосу свой боевой топор «Левиафан» и просьбу сжечь её, а прах развеять «на самой высокой точке Девяти Миров». Также она просит позаботиться об Атрее, хотя Кратос сам признаёт, что без неё он этого не может.
                        """,
                      platforms: [Game.PS4],
                      devCompany: "Santa Monica Studio"),
                 Game(year:2016, image: "FFVX.jpg", name: "Final Fantasy XV",
                      description: """
                        Действие Final Fantasy XV разворачивается в мире, напоминающем по окружению настоящее время. Королевство Люцис, принцем которого является главный герой, Ноктис, является технически развитой державой, окружённой другими королевствами, по развитию не превосходящими королевство Люцис. Причиной всему является непрекращающаяся война за магический кристалл, которым владеет королевская семья Кэлум. История Final Fantasy XV берёт начало из инцидента после подписания мирного договора между королевствами касательно окончания боевых действий и последующего использования кристалла в мирных целях. Конфликт разгорается вновь после того, как соседнее с Люцис королевство Нифльхейм вероломно нападает на столицу Люцис, Инсомнию, из-за чего Ноктису и его друзьям приходится устраивать побег. Успешно развязав новый виток войны между владениями Солхейм, Тенебрэ и Аккордо, войска Нифльхейма захватывают последний кристалл, но Ноктис с друзьями пытаются отбить его обратно.
                        """,
                      platforms: [Game.PC, Game.XONE, Game.PS4],
                      devCompany: "Square Enix Business Division 2"),
                 Game(year:2018, image: "FC5.png", name: "Far Cry 5",
                      description: """
                        Действие игры разворачивается в вымышленном округе Хоуп, штат Монтана, где правит лжепророк по имени Иосиф Сид. Он считает, что был избран, чтобы защитить людей от «неизбежного краха», создав общество под названием «Врата Эдема». На словах, эта организация существовала для того, чтобы привести народ к спасению, на деле же Сид является радикальным лидером, а «Врата Эдема» — это секта религиозных фанатиков. При его правлении секта использовалась как для принуждения, так и для жестокого обращения с жителями округа Хоуп и запугивания, чтобы они не обращались за помощью к федеральному правительству. Когда попытка арестовать «Врата Эдема» заканчивается смертью нескольких сотрудников правоохранительных органов, игрок ввязывается в вооружённый конфликт между сектантами и оставшимися жителями округа Хоуп, которые возглавляют сопротивление.
                        """,
                      platforms: [Game.PC, Game.XONE, Game.PS4],
                      devCompany: "Ubisoft Montreal")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ListGamesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ListGamesViewCell
        
        cell?.game = games[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let gameViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProjectViewController") as? ProjectViewController else {
            return
        }
        
        let game = games[indexPath.row]
        
        gameViewController.game = game
        self.navigationController?.pushViewController(gameViewController, animated: true)
    }
    
}
