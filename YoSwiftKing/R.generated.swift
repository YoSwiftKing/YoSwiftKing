//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 10 files.
  struct file {
    /// Resource file `SwiftProtocol.md`.
    static let swiftProtocolMd = Rswift.FileResource(bundle: R.hostingBundle, name: "SwiftProtocol", pathExtension: "md")
    /// Resource file `YoBaseBundle.bundle`.
    static let yoBaseBundleBundle = Rswift.FileResource(bundle: R.hostingBundle, name: "YoBaseBundle", pathExtension: "bundle")
    /// Resource file `YoSwift-0.json`.
    static let yoSwift0Json = Rswift.FileResource(bundle: R.hostingBundle, name: "YoSwift-0", pathExtension: "json")
    /// Resource file `YoSwift-Main.json`.
    static let yoSwiftMainJson = Rswift.FileResource(bundle: R.hostingBundle, name: "YoSwift-Main", pathExtension: "json")
    /// Resource file `demo-big.gif`.
    static let demoBigGif = Rswift.FileResource(bundle: R.hostingBundle, name: "demo-big", pathExtension: "gif")
    /// Resource file `demo-small.gif`.
    static let demoSmallGif = Rswift.FileResource(bundle: R.hostingBundle, name: "demo-small", pathExtension: "gif")
    /// Resource file `markdown-white.css`.
    static let markdownWhiteCss = Rswift.FileResource(bundle: R.hostingBundle, name: "markdown-white", pathExtension: "css")
    /// Resource file `markdown.html`.
    static let markdownHtml = Rswift.FileResource(bundle: R.hostingBundle, name: "markdown", pathExtension: "html")
    /// Resource file `mdjs.js`.
    static let mdjsJs = Rswift.FileResource(bundle: R.hostingBundle, name: "mdjs", pathExtension: "js")
    /// Resource file `vue.css`.
    static let vueCss = Rswift.FileResource(bundle: R.hostingBundle, name: "vue", pathExtension: "css")

    /// `bundle.url(forResource: "SwiftProtocol", withExtension: "md")`
    static func swiftProtocolMd(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.swiftProtocolMd
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "YoBaseBundle", withExtension: "bundle")`
    static func yoBaseBundleBundle(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.yoBaseBundleBundle
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "YoSwift-0", withExtension: "json")`
    static func yoSwift0Json(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.yoSwift0Json
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "YoSwift-Main", withExtension: "json")`
    static func yoSwiftMainJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.yoSwiftMainJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "demo-big", withExtension: "gif")`
    static func demoBigGif(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.demoBigGif
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "demo-small", withExtension: "gif")`
    static func demoSmallGif(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.demoSmallGif
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "markdown", withExtension: "html")`
    static func markdownHtml(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.markdownHtml
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "markdown-white", withExtension: "css")`
    static func markdownWhiteCss(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.markdownWhiteCss
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "mdjs", withExtension: "js")`
    static func mdjsJs(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.mdjsJs
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "vue", withExtension: "css")`
    static func vueCss(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.vueCss
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 28 images.
  struct image {
    /// Image `buildings`.
    static let buildings = Rswift.ImageResource(bundle: R.hostingBundle, name: "buildings")
    /// Image `cape_back`.
    static let cape_back = Rswift.ImageResource(bundle: R.hostingBundle, name: "cape_back")
    /// Image `cape_front`.
    static let cape_front = Rswift.ImageResource(bundle: R.hostingBundle, name: "cape_front")
    /// Image `cat`.
    static let cat = Rswift.ImageResource(bundle: R.hostingBundle, name: "cat")
    /// Image `cloud_1`.
    static let cloud_1 = Rswift.ImageResource(bundle: R.hostingBundle, name: "cloud_1")
    /// Image `cloud_2`.
    static let cloud_2 = Rswift.ImageResource(bundle: R.hostingBundle, name: "cloud_2")
    /// Image `cloud_3`.
    static let cloud_3 = Rswift.ImageResource(bundle: R.hostingBundle, name: "cloud_3")
    /// Image `demo-big.gif`.
    static let demoBigGif = Rswift.ImageResource(bundle: R.hostingBundle, name: "demo-big.gif")
    /// Image `demo-small.gif`.
    static let demoSmallGif = Rswift.ImageResource(bundle: R.hostingBundle, name: "demo-small.gif")
    /// Image `ground`.
    static let ground = Rswift.ImageResource(bundle: R.hostingBundle, name: "ground")
    /// Image `icon_layer_cancle_normal`.
    static let icon_layer_cancle_normal = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_layer_cancle_normal")
    /// Image `icon_pandalist_add2_normal`.
    static let icon_pandalist_add2_normal = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_pandalist_add2_normal")
    /// Image `img_defaultavatar4`.
    static let img_defaultavatar4 = Rswift.ImageResource(bundle: R.hostingBundle, name: "img_defaultavatar4")
    /// Image `login.logo`.
    static let loginLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "login.logo")
    /// Image `sign`.
    static let sign = Rswift.ImageResource(bundle: R.hostingBundle, name: "sign")
    /// Image `sun`.
    static let sun = Rswift.ImageResource(bundle: R.hostingBundle, name: "sun")
    /// Image `tabBar_demo_normal_icon`.
    static let tabBar_demo_normal_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_demo_normal_icon")
    /// Image `tabBar_demo_select_icon`.
    static let tabBar_demo_select_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_demo_select_icon")
    /// Image `tabBar_foundation_normal_icon`.
    static let tabBar_foundation_normal_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_foundation_normal_icon")
    /// Image `tabBar_foundation_select_icon`.
    static let tabBar_foundation_select_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_foundation_select_icon")
    /// Image `tabBar_swift_normal_icon`.
    static let tabBar_swift_normal_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_swift_normal_icon")
    /// Image `tabBar_swift_select_icon`.
    static let tabBar_swift_select_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_swift_select_icon")
    /// Image `tabBar_ui_normal_icon`.
    static let tabBar_ui_normal_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_ui_normal_icon")
    /// Image `tabBar_ui_select_icon`.
    static let tabBar_ui_select_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabBar_ui_select_icon")
    /// Image `trade_arrows_down_btn`.
    static let trade_arrows_down_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "trade_arrows_down_btn")
    /// Image `trade_arrows_down_selected_btn`.
    static let trade_arrows_down_selected_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "trade_arrows_down_selected_btn")
    /// Image `yo_calendar_left`.
    static let yo_calendar_left = Rswift.ImageResource(bundle: R.hostingBundle, name: "yo_calendar_left")
    /// Image `yo_calendar_right`.
    static let yo_calendar_right = Rswift.ImageResource(bundle: R.hostingBundle, name: "yo_calendar_right")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "buildings", bundle: ..., traitCollection: ...)`
    static func buildings(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buildings, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cape_back", bundle: ..., traitCollection: ...)`
    static func cape_back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cape_back, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cape_front", bundle: ..., traitCollection: ...)`
    static func cape_front(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cape_front, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cat", bundle: ..., traitCollection: ...)`
    static func cat(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cat, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cloud_1", bundle: ..., traitCollection: ...)`
    static func cloud_1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cloud_1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cloud_2", bundle: ..., traitCollection: ...)`
    static func cloud_2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cloud_2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "cloud_3", bundle: ..., traitCollection: ...)`
    static func cloud_3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cloud_3, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "demo-big.gif", bundle: ..., traitCollection: ...)`
    static func demoBigGif(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.demoBigGif, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "demo-small.gif", bundle: ..., traitCollection: ...)`
    static func demoSmallGif(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.demoSmallGif, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "ground", bundle: ..., traitCollection: ...)`
    static func ground(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ground, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_layer_cancle_normal", bundle: ..., traitCollection: ...)`
    static func icon_layer_cancle_normal(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_layer_cancle_normal, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "icon_pandalist_add2_normal", bundle: ..., traitCollection: ...)`
    static func icon_pandalist_add2_normal(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_pandalist_add2_normal, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "img_defaultavatar4", bundle: ..., traitCollection: ...)`
    static func img_defaultavatar4(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.img_defaultavatar4, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "login.logo", bundle: ..., traitCollection: ...)`
    static func loginLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.loginLogo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sign", bundle: ..., traitCollection: ...)`
    static func sign(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sign, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sun", bundle: ..., traitCollection: ...)`
    static func sun(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sun, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_demo_normal_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_demo_normal_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_demo_normal_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_demo_select_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_demo_select_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_demo_select_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_foundation_normal_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_foundation_normal_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_foundation_normal_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_foundation_select_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_foundation_select_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_foundation_select_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_swift_normal_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_swift_normal_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_swift_normal_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_swift_select_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_swift_select_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_swift_select_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_ui_normal_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_ui_normal_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_ui_normal_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "tabBar_ui_select_icon", bundle: ..., traitCollection: ...)`
    static func tabBar_ui_select_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tabBar_ui_select_icon, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "trade_arrows_down_btn", bundle: ..., traitCollection: ...)`
    static func trade_arrows_down_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.trade_arrows_down_btn, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "trade_arrows_down_selected_btn", bundle: ..., traitCollection: ...)`
    static func trade_arrows_down_selected_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.trade_arrows_down_selected_btn, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "yo_calendar_left", bundle: ..., traitCollection: ...)`
    static func yo_calendar_left(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.yo_calendar_left, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "yo_calendar_right", bundle: ..., traitCollection: ...)`
    static func yo_calendar_right(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.yo_calendar_right, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}