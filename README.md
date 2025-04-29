# ROS2 Message Definition

This repository stores all the ROS2 message definitions. The folder structure under `Sources/ros2msg` follows the ROS2 message definitions without the `msg` subfolder.

`Sources/ros2msg/Resources` contains the original `.msg` files provided by ROS2. Currently, we are using the `Humble Hawksbill` distribution. Note that the `.msg` files under `Sources/ros2msg/Resources/ros2humble` include complete definitions with all dependent message types.

## Current Functionality

- **Swift Protocols and Macros:**  
  The package is organized into multiple modules:
  - `ROS2MsgProtocol`: Defines the protocols that all ROS2 message implementations must conform to.
  - `ROS2MsgMacros`: Uses custom Swift macros (powered by swift-syntax) to annotate and simplify message type registration.
  - `ros2msg`: The main module that integrates the above functionalities.
  
- **Compiler Plugins & Custom Macros:**  
  Leveraging Swift 5.9 and the [swift-syntax](https://github.com/apple/swift-syntax) package, the project supports custom macros and compiler plugins for reducing boilerplate code.

- **Async/Await Support:**  
  The package targets macOS v14 and iOS v17, ensuring full support for async/await as required.

- **Resource Integration:**  
  The `.msg` files in `Sources/ros2msg/Resources/ros2humble` are copied as resources at build time, making the ROS2 message definitions available during runtime.

## Contact

For questions, improvements, or issues regarding adding new messages, please contact:

Yaoyu Hu: yaoyuh@andrew.cmu.edu

Modified by Chiawen Liao: chiawenl@andrew.cmu.edu
