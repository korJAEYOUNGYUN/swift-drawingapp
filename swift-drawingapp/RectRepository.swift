//
//  RectRepository.swift
//  swift-drawingapp
//
//  Created by jaeyoung Yun on 2022/10/30.
//

import Combine

final class RectRepository {
    var rectsSubject: PassthroughSubject<[Rect], Never>

    init() {
        rectsSubject = .init()
    }
}

extension RectRepository: CreateRectUseCase {
    func createRect(
        position: Position,
        color: DrawingColor,
        size: Size
    ) {
        let rect = Rect(
            id: .init(),
            position: position,
            color: color,
            size: size
        )

        rectsSubject.send([rect])
    }
}

extension RectRepository: RectsPublisherUseCase {
    var rectsPublisher: AnyPublisher<[Rect], Never> {
        rectsSubject.eraseToAnyPublisher()
    }
}