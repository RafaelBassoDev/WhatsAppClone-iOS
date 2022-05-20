//
//  WhatsAppClone_iOSTests.swift
//  WhatsAppClone-iOSTests
//
//  Created by Rafael Basso on 19/05/22.
//

import XCTest
@testable import WhatsAppClone_iOS

class WhatsAppClone_iOSTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewItemCount() {
        // Given
        let messageViewController = MessageListViewController()
        let tableViewControllerDataSource = messageViewController as UITableViewDataSource
        
        // When
        messageViewController.viewDidLoad()
        
        // Then
        XCTAssertEqual(tableViewControllerDataSource.tableView(messageViewController.tableView, numberOfRowsInSection: 0), 5)
    }
    
}
