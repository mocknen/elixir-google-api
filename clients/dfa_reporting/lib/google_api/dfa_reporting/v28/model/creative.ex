# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.Creative do
  @moduledoc """
  Contains properties of a Creative.

  ## Attributes

  - accountId (String.t): Account ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types. Defaults to: `null`.
  - active (boolean()): Whether the creative is active. Applicable to all creative types. Defaults to: `null`.
  - adParameters (String.t): Ad parameters user for VPAID creative. This is a read-only field. Applicable to the following creative types: all VPAID. Defaults to: `null`.
  - adTagKeys ([String.t]): Keywords for a Rich Media creative. Keywords let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use keywords to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this creative. This is a required field. Applicable to all creative types. Defaults to: `null`.
  - allowScriptAccess (boolean()): Whether script access is allowed for this creative. This is a read-only and deprecated field which will automatically be set to true on update. Applicable to the following creative types: FLASH_INPAGE. Defaults to: `null`.
  - archived (boolean()): Whether the creative is archived. Applicable to all creative types. Defaults to: `null`.
  - artworkType (String.t): Type of artwork used for the creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
    - Enum - one of [ARTWORK_TYPE_FLASH, ARTWORK_TYPE_HTML5, ARTWORK_TYPE_IMAGE, ARTWORK_TYPE_MIXED]
  - authoringSource (String.t): Source application where creative was authored. Presently, only DBM authored creatives will have this field set. Applicable to all creative types. Defaults to: `null`.
    - Enum - one of [CREATIVE_AUTHORING_SOURCE_DBM, CREATIVE_AUTHORING_SOURCE_DCM, CREATIVE_AUTHORING_SOURCE_STUDIO]
  - authoringTool (String.t): Authoring tool for HTML5 banner creatives. This is a read-only field. Applicable to the following creative types: HTML5_BANNER. Defaults to: `null`.
    - Enum - one of [NINJA, SWIFFY]
  - autoAdvanceImages (boolean()): Whether images are automatically advanced for image gallery creatives. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY. Defaults to: `null`.
  - backgroundColor (String.t): The 6-character HTML color code, beginning with #, for the background of the window area where the Flash file is displayed. Default is white. Applicable to the following creative types: FLASH_INPAGE. Defaults to: `null`.
  - backupImageClickThroughUrl (String.t): Click-through URL for backup image. Applicable to the following creative types: FLASH_INPAGE, and HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - backupImageFeatures ([String.t]): List of feature dependencies that will cause a backup image to be served if the browser that serves the ad does not support them. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative asset correctly. This field is initially auto-generated to contain all features detected by Campaign Manager for all the assets of this creative and can then be modified by the client. To reset this field, copy over all the creativeAssets&#39; detected features. Applicable to the following creative types: HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
    - Enum - one of 
  - backupImageReportingLabel (String.t): Reporting label used for HTML5 banner backup image. Applicable to the following creative types: DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - backupImageTargetWindow (TargetWindow): Target window for backup image. Applicable to the following creative types: FLASH_INPAGE and HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - clickTags ([ClickTag]): Click tags of the creative. For DISPLAY, FLASH_INPAGE, and HTML5_BANNER creatives, this is a subset of detected click tags for the assets associated with this creative. After creating a flash asset, detected click tags will be returned in the creativeAssetMetadata. When inserting the creative, populate the creative clickTags field using the creativeAssetMetadata.clickTags field. For DISPLAY_IMAGE_GALLERY creatives, there should be exactly one entry in this list for each image creative asset. A click tag is matched with a corresponding creative asset by matching the clickTag.name field with the creativeAsset.assetIdentifier.name field. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - commercialId (String.t): Industry standard ID assigned to creative for reach and frequency. Applicable to INSTREAM_VIDEO_REDIRECT creatives. Defaults to: `null`.
  - companionCreatives ([String.t]): List of companion creatives assigned to an in-Stream video creative. Acceptable values include IDs of existing flash and image creatives. Applicable to the following creative types: all VPAID and all INSTREAM_VIDEO with dynamicAssetSelection set to false. Defaults to: `null`.
  - compatibility ([String.t]): Compatibilities associated with this creative. This is a read-only field. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. Only pre-existing creatives may have these compatibilities since new creatives will either be assigned DISPLAY or DISPLAY_INTERSTITIAL instead. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. Applicable to all creative types.  Acceptable values are: - \&quot;APP\&quot; - \&quot;APP_INTERSTITIAL\&quot; - \&quot;IN_STREAM_VIDEO\&quot; - \&quot;DISPLAY\&quot; - \&quot;DISPLAY_INTERSTITIAL\&quot; Defaults to: `null`.
    - Enum - one of 
  - convertFlashToHtml5 (boolean()): Whether Flash assets associated with the creative need to be automatically converted to HTML5. This flag is enabled by default and users can choose to disable it if they don&#39;t want the system to generate and use HTML5 asset for this creative. Applicable to the following creative type: FLASH_INPAGE. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - counterCustomEvents ([CreativeCustomEvent]): List of counter events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - creativeAssetSelection (CreativeAssetSelection): Required if dynamicAssetSelection is true. Defaults to: `null`.
  - creativeAssets ([CreativeAsset]): Assets associated with a creative. Applicable to all but the following creative types: INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and REDIRECT Defaults to: `null`.
  - creativeFieldAssignments ([CreativeFieldAssignment]): Creative field assignments for this creative. Applicable to all creative types. Defaults to: `null`.
  - customKeyValues ([String.t]): Custom key-values for a Rich Media creative. Key-values let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use key-values to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - dynamicAssetSelection (boolean()): Set this to true to enable the use of rules to target individual assets in this creative. When set to true creativeAssetSelection must be set. This also controls asset-level companions. When this is true, companion creatives should be assigned to creative assets. Learn more. Applicable to INSTREAM_VIDEO creatives. Defaults to: `null`.
  - exitCustomEvents ([CreativeCustomEvent]): List of exit events configured for the creative. For DISPLAY and DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags, For DISPLAY, an event is also created from the backupImageReportingLabel. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - fsCommand (FsCommand): OpenWindow FSCommand of this creative. This lets the SWF file communicate with either Flash Player or the program hosting Flash Player, such as a web browser. This is only triggered if allowScriptAccess field is true. Applicable to the following creative types: FLASH_INPAGE. Defaults to: `null`.
  - htmlCode (String.t): HTML code for the creative. This is a required field when applicable. This field is ignored if htmlCodeLocked is true. Applicable to the following creative types: all CUSTOM, FLASH_INPAGE, and HTML5_BANNER, and all RICH_MEDIA. Defaults to: `null`.
  - htmlCodeLocked (boolean()): Whether HTML code is generated by Campaign Manager or manually entered. Set to true to ignore changes to htmlCode. Applicable to the following creative types: FLASH_INPAGE and HTML5_BANNER. Defaults to: `null`.
  - id (String.t): ID of this creative. This is a read-only, auto-generated field. Applicable to all creative types. Defaults to: `null`.
  - idDimensionValue (DimensionValue): Dimension value for the ID of this creative. This is a read-only field. Applicable to all creative types. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#creative\&quot;. Defaults to: `null`.
  - lastModifiedInfo (LastModifiedInfo): Creative last modification information. This is a read-only field. Applicable to all creative types. Defaults to: `null`.
  - latestTraffickedCreativeId (String.t): Latest Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - name (String.t): Name of the creative. This is a required field and must be less than 256 characters long. Applicable to all creative types. Defaults to: `null`.
  - overrideCss (String.t): Override CSS value for rich media creatives. Applicable to the following creative types: all RICH_MEDIA. Defaults to: `null`.
  - progressOffset (VideoOffset): Amount of time to play the video before counting a view. Applicable to the following creative types: all INSTREAM_VIDEO. Defaults to: `null`.
  - redirectUrl (String.t): URL of hosted image or hosted video or another ad tag. For INSTREAM_VIDEO_REDIRECT creatives this is the in-stream video redirect URL. The standard for a VAST (Video Ad Serving Template) ad response allows for a redirect link to another VAST 2.0 or 3.0 call. This is a required field when applicable. Applicable to the following creative types: DISPLAY_REDIRECT, INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO_REDIRECT Defaults to: `null`.
  - renderingId (String.t): ID of current rendering version. This is a read-only field. Applicable to all creative types. Defaults to: `null`.
  - renderingIdDimensionValue (DimensionValue): Dimension value for the rendering ID of this creative. This is a read-only field. Applicable to all creative types. Defaults to: `null`.
  - requiredFlashPluginVersion (String.t): The minimum required Flash plugin version for this creative. For example, 11.2.202.235. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - requiredFlashVersion (integer()): The internal Flash version for this creative as calculated by Studio. This is a read-only field. Applicable to the following creative types: FLASH_INPAGE all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. Defaults to: `null`.
  - size (Size): Size associated with this creative. When inserting or updating a creative either the size ID field or size width and height fields can be used. This is a required field when applicable; however for IMAGE, FLASH_INPAGE creatives, and for DISPLAY creatives with a primary asset of type HTML_IMAGE, if left blank, this field will be automatically set using the actual size of the associated image assets. Applicable to the following creative types: DISPLAY, DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER, IMAGE, and all RICH_MEDIA. Defaults to: `null`.
  - skipOffset (VideoOffset): Amount of time to play the video before the skip button appears. Applicable to the following creative types: all INSTREAM_VIDEO. Defaults to: `null`.
  - skippable (boolean()): Whether the user can choose to skip the creative. Applicable to the following creative types: all INSTREAM_VIDEO and all VPAID. Defaults to: `null`.
  - sslCompliant (boolean()): Whether the creative is SSL-compliant. This is a read-only field. Applicable to all creative types. Defaults to: `null`.
  - sslOverride (boolean()): Whether creative should be treated as SSL compliant even if the system scan shows it&#39;s not. Applicable to all creative types. Defaults to: `null`.
  - studioAdvertiserId (String.t): Studio advertiser ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - studioCreativeId (String.t): Studio creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - studioTraffickedCreativeId (String.t): Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types. Defaults to: `null`.
  - thirdPartyBackupImageImpressionsUrl (String.t): Third-party URL used to record backup image impressions. Applicable to the following creative types: all RICH_MEDIA. Defaults to: `null`.
  - thirdPartyRichMediaImpressionsUrl (String.t): Third-party URL used to record rich media impressions. Applicable to the following creative types: all RICH_MEDIA. Defaults to: `null`.
  - thirdPartyUrls ([ThirdPartyTrackingUrl]): Third-party URLs for tracking in-stream video creative events. Applicable to the following creative types: all INSTREAM_VIDEO and all VPAID. Defaults to: `null`.
  - timerCustomEvents ([CreativeCustomEvent]): List of timer events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset is not HTML_IMAGE. Defaults to: `null`.
  - totalFileSize (String.t): Combined size of all creative assets. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  - type (String.t): Type of this creative. This is a required field. Applicable to all creative types.  Note: FLASH_INPAGE, HTML5_BANNER, and IMAGE are only used for existing creatives. New creatives should use DISPLAY as a replacement for these types. Defaults to: `null`.
    - Enum - one of [BRAND_SAFE_DEFAULT_INSTREAM_VIDEO, CUSTOM_DISPLAY, CUSTOM_DISPLAY_INTERSTITIAL, DISPLAY, DISPLAY_IMAGE_GALLERY, DISPLAY_REDIRECT, FLASH_INPAGE, HTML5_BANNER, IMAGE, INSTREAM_AUDIO, INSTREAM_VIDEO, INSTREAM_VIDEO_REDIRECT, INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, RICH_MEDIA_DISPLAY_BANNER, RICH_MEDIA_DISPLAY_EXPANDING, RICH_MEDIA_DISPLAY_INTERSTITIAL, RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL, RICH_MEDIA_IM_EXPAND, RICH_MEDIA_INPAGE_FLOATING, RICH_MEDIA_MOBILE_IN_APP, RICH_MEDIA_PEEL_DOWN, TRACKING_TEXT, VPAID_LINEAR_VIDEO, VPAID_NON_LINEAR_VIDEO]
  - universalAdId (UniversalAdId): A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM_VIDEO and VPAID. Defaults to: `null`.
  - version (integer()): The version number helps you keep track of multiple versions of your creative in your reports. The version number will always be auto-generated during insert operations to start at 1. For tracking creatives the version cannot be incremented and will always remain at 1. For all other creative types the version can be incremented only by 1 during update operations. In addition, the version will be automatically incremented by 1 when undergoing Rich Media creative merging. Applicable to all creative types. Defaults to: `null`.
  - videoDescription (String.t): Description of the video ad. Applicable to the following creative types: all INSTREAM_VIDEO and all VPAID. Defaults to: `null`.
  - videoDuration (float()): Creative video duration in seconds. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO, all RICH_MEDIA, and all VPAID. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :active => any(),
          :adParameters => any(),
          :adTagKeys => list(any()),
          :advertiserId => any(),
          :allowScriptAccess => any(),
          :archived => any(),
          :artworkType => any(),
          :authoringSource => any(),
          :authoringTool => any(),
          :autoAdvanceImages => any(),
          :backgroundColor => any(),
          :backupImageClickThroughUrl => any(),
          :backupImageFeatures => list(any()),
          :backupImageReportingLabel => any(),
          :backupImageTargetWindow => GoogleApi.DFAReporting.V28.Model.TargetWindow.t(),
          :clickTags => list(GoogleApi.DFAReporting.V28.Model.ClickTag.t()),
          :commercialId => any(),
          :companionCreatives => list(any()),
          :compatibility => list(any()),
          :convertFlashToHtml5 => any(),
          :counterCustomEvents => list(GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent.t()),
          :creativeAssetSelection => GoogleApi.DFAReporting.V28.Model.CreativeAssetSelection.t(),
          :creativeAssets => list(GoogleApi.DFAReporting.V28.Model.CreativeAsset.t()),
          :creativeFieldAssignments =>
            list(GoogleApi.DFAReporting.V28.Model.CreativeFieldAssignment.t()),
          :customKeyValues => list(any()),
          :dynamicAssetSelection => any(),
          :exitCustomEvents => list(GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent.t()),
          :fsCommand => GoogleApi.DFAReporting.V28.Model.FsCommand.t(),
          :htmlCode => any(),
          :htmlCodeLocked => any(),
          :id => any(),
          :idDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :kind => any(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V28.Model.LastModifiedInfo.t(),
          :latestTraffickedCreativeId => any(),
          :name => any(),
          :overrideCss => any(),
          :progressOffset => GoogleApi.DFAReporting.V28.Model.VideoOffset.t(),
          :redirectUrl => any(),
          :renderingId => any(),
          :renderingIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :requiredFlashPluginVersion => any(),
          :requiredFlashVersion => any(),
          :size => GoogleApi.DFAReporting.V28.Model.Size.t(),
          :skipOffset => GoogleApi.DFAReporting.V28.Model.VideoOffset.t(),
          :skippable => any(),
          :sslCompliant => any(),
          :sslOverride => any(),
          :studioAdvertiserId => any(),
          :studioCreativeId => any(),
          :studioTraffickedCreativeId => any(),
          :subaccountId => any(),
          :thirdPartyBackupImageImpressionsUrl => any(),
          :thirdPartyRichMediaImpressionsUrl => any(),
          :thirdPartyUrls => list(GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl.t()),
          :timerCustomEvents => list(GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent.t()),
          :totalFileSize => any(),
          :type => any(),
          :universalAdId => GoogleApi.DFAReporting.V28.Model.UniversalAdId.t(),
          :version => any(),
          :videoDescription => any(),
          :videoDuration => any()
        }

  field(:accountId)
  field(:active)
  field(:adParameters)
  field(:adTagKeys, type: :list)
  field(:advertiserId)
  field(:allowScriptAccess)
  field(:archived)
  field(:artworkType)
  field(:authoringSource)
  field(:authoringTool)
  field(:autoAdvanceImages)
  field(:backgroundColor)
  field(:backupImageClickThroughUrl)
  field(:backupImageFeatures, type: :list)
  field(:backupImageReportingLabel)
  field(:backupImageTargetWindow, as: GoogleApi.DFAReporting.V28.Model.TargetWindow)
  field(:clickTags, as: GoogleApi.DFAReporting.V28.Model.ClickTag, type: :list)
  field(:commercialId)
  field(:companionCreatives, type: :list)
  field(:compatibility, type: :list)
  field(:convertFlashToHtml5)

  field(
    :counterCustomEvents,
    as: GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent,
    type: :list
  )

  field(:creativeAssetSelection, as: GoogleApi.DFAReporting.V28.Model.CreativeAssetSelection)
  field(:creativeAssets, as: GoogleApi.DFAReporting.V28.Model.CreativeAsset, type: :list)

  field(
    :creativeFieldAssignments,
    as: GoogleApi.DFAReporting.V28.Model.CreativeFieldAssignment,
    type: :list
  )

  field(:customKeyValues, type: :list)
  field(:dynamicAssetSelection)
  field(:exitCustomEvents, as: GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent, type: :list)
  field(:fsCommand, as: GoogleApi.DFAReporting.V28.Model.FsCommand)
  field(:htmlCode)
  field(:htmlCodeLocked)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V28.Model.LastModifiedInfo)
  field(:latestTraffickedCreativeId)
  field(:name)
  field(:overrideCss)
  field(:progressOffset, as: GoogleApi.DFAReporting.V28.Model.VideoOffset)
  field(:redirectUrl)
  field(:renderingId)
  field(:renderingIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:requiredFlashPluginVersion)
  field(:requiredFlashVersion)
  field(:size, as: GoogleApi.DFAReporting.V28.Model.Size)
  field(:skipOffset, as: GoogleApi.DFAReporting.V28.Model.VideoOffset)
  field(:skippable)
  field(:sslCompliant)
  field(:sslOverride)
  field(:studioAdvertiserId)
  field(:studioCreativeId)
  field(:studioTraffickedCreativeId)
  field(:subaccountId)
  field(:thirdPartyBackupImageImpressionsUrl)
  field(:thirdPartyRichMediaImpressionsUrl)
  field(:thirdPartyUrls, as: GoogleApi.DFAReporting.V28.Model.ThirdPartyTrackingUrl, type: :list)
  field(:timerCustomEvents, as: GoogleApi.DFAReporting.V28.Model.CreativeCustomEvent, type: :list)
  field(:totalFileSize)
  field(:type)
  field(:universalAdId, as: GoogleApi.DFAReporting.V28.Model.UniversalAdId)
  field(:version)
  field(:videoDescription)
  field(:videoDuration)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Creative do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end