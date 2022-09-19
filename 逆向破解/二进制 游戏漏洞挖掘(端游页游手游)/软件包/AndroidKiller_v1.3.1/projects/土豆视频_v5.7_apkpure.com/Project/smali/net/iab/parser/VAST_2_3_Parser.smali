.class public Lnet/iab/parser/VAST_2_3_Parser;
.super Ljava/lang/Object;


# static fields
.field private static final AD:Ljava/lang/String; = "ad"

.field private static final AD_ID:Ljava/lang/String; = "AdID"

.field private static final AD_PARAMETERS:Ljava/lang/String; = "AdParameters"

.field private static final AD_SYSTEM:Ljava/lang/String; = "AdSystem"

.field private static final AD_TITLE:Ljava/lang/String; = "AdTitle"

.field private static final ALT_TEXT:Ljava/lang/String; = "AltText"

.field private static final API_FRAMEWORK:Ljava/lang/String; = "apiFramework"

.field private static final BITRATE:Ljava/lang/String; = "bitrate"

.field private static final CLICK_THROUGH:Ljava/lang/String; = "ClickThrough"

.field private static final CLICK_TRACKING:Ljava/lang/String; = "ClickTracking"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMPANION_ADS:Ljava/lang/String; = "CompanionAds"

.field private static final COMPANION_CLICK_THROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final CREATIVE_TYPE:Ljava/lang/String; = "creativeType"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final CURRENCY:Ljava/lang/String; = "currency"

.field private static final CUSTOM_CLICK:Ljava/lang/String; = "CustomClick"

.field private static final DELIVERY:Ljava/lang/String; = "delivery"

.field private static final DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final DURATION:Ljava/lang/String; = "Duration"

.field private static final ERROR:Ljava/lang/String; = "Error"

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final EXPANDED_HEIGHT:Ljava/lang/String; = "expandedHeight"

.field private static final EXPANDED_WIDTH:Ljava/lang/String; = "expandedWidth"

.field private static final EXTENSIONS:Ljava/lang/String; = "Extensions"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final HTML_RESOURCE:Ljava/lang/String; = "HTMLResource"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final IFRAME_RESOURCE:Ljava/lang/String; = "IFrameResource"

.field private static final IMPRESSION:Ljava/lang/String; = "Impression"

.field private static final IN_LINE:Ljava/lang/String; = "InLine"

.field private static final LINEAR:Ljava/lang/String; = "Linear"

.field private static final MAINTAIN_ASPECT_RATIO:Ljava/lang/String; = "maintainAspectRatio"

.field private static final MEDIA_FILES:Ljava/lang/String; = "MediaFiles"

.field private static final MIN_SUGGESTED_DURATION:Ljava/lang/String; = "minSuggestedDuration"

.field private static final MODEL:Ljava/lang/String; = "model"

.field private static final NON_LINEAR:Ljava/lang/String; = "NonLinear"

.field private static final NON_LINEAR_ADS:Ljava/lang/String; = "NonLinearAds"

.field private static final NON_LINEAR_CLICK_THROUGH:Ljava/lang/String; = "NonLinearClickThrough"

.field private static final PRICING:Ljava/lang/String; = "Pricing"

.field private static final PROGRESSIVE:Ljava/lang/String; = "progressive"

.field private static final SCALABLE:Ljava/lang/String; = "scalable"

.field private static final SEQUENCE:Ljava/lang/String; = "Sequence"

.field private static final STATIC_RESOURCE:Ljava/lang/String; = "StaticResource"

.field private static final SURVEY:Ljava/lang/String; = "Survey"

.field private static final TRACKING:Ljava/lang/String; = "tracking"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VAST_AD_TAG_URI:Ljava/lang/String; = "VASTAdTagURI"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VIDEO_CLICKS:Ljava/lang/String; = "VideoClicks"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field private static final WRAPPER:Ljava/lang/String; = "Wrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-direct {p0, v0}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, v0}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Z
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-direct {p0, v0}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_0
.end method

.method private getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private parseAd(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAd;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "id"

    invoke-direct {p0, p1, v0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v1, v2

    move-object v0, v3

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_3

    if-nez v0, :cond_3

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "InLine"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v6}, Lnet/iab/parser/VAST_2_3_Parser;->parseInLine(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTInLine;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v7, "Wrapper"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v6}, Lnet/iab/parser/VAST_2_3_Parser;->parseWrapper(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAd;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lnet/iab/exception/InvalidDocumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "InLine"

    aput-object v4, v1, v2

    const-string v2, "Wrapper"

    aput-object v2, v1, v9

    invoke-direct {v0, v3, v1}, Lnet/iab/exception/InvalidDocumentException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v4}, Lnet/iab/vast/ad/VASTAd;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseAdSystem(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAdSystem;
    .locals 3

    new-instance v0, Lnet/iab/vast/ad/VASTAdSystem;

    invoke-direct {v0}, Lnet/iab/vast/ad/VASTAdSystem;-><init>()V

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTAdSystem;->setVersion(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTAdSystem;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseCompanionAd(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionAd;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v2, Lnet/iab/vast/ad/VASTCompanionAd;

    invoke-direct {v2}, Lnet/iab/vast/ad/VASTCompanionAd;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "AdParameters"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setAdParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "CompanionClickThrough"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setClickThrough(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "AltText"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setAltText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v5, "StaticResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseStaticResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_5
    const-string v5, "HTMLResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseHTMLResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_6
    const-string v5, "IFrameResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseIFrameResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_7
    const-string v5, "TrackingEvents"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseTrackingEvents(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTCompanionAd;->setTrackingEvents(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "id"

    invoke-direct {p0, p1, v0, v7}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setId(Ljava/lang/String;)V

    const-string v0, "height"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setHeight(I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setWidth(I)V

    const-string v0, "expandedHeight"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setExpandedHeight(I)V

    const-string v0, "expandedWidth"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setExpandedWidth(I)V

    const-string v0, "apiFramework"

    invoke-direct {p0, p1, v0, v7}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTCompanionAd;->setApiFramework(Ljava/lang/String;)V

    return-object v2
.end method

.method private parseCompanionAds(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;
    .locals 6

    new-instance v1, Lnet/iab/vast/ad/VASTCompanionAds;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTCompanionAds;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseCompanionAd(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionAd;

    move-result-object v3

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTCompanionAds;->getCompanions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private parseCreative(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v2

    move-object v0, v3

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_5

    if-nez v0, :cond_5

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "Linear"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v5}, Lnet/iab/parser/VAST_2_3_Parser;->parseLinear(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    const-string v6, "AdID"

    invoke-direct {p0, v5, v6, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/iab/vast/ad/VASTCreative;->setAdId(Ljava/lang/String;)V

    const-string v6, "id"

    invoke-direct {p0, v5, v6, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/iab/vast/ad/VASTCreative;->setId(Ljava/lang/String;)V

    const-string v6, "Sequence"

    invoke-direct {p0, v5, v6, v9}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/iab/vast/ad/VASTCreative;->setSequence(I)V

    goto :goto_1

    :cond_2
    const-string v6, "CompanionAds"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lnet/iab/parser/VAST_2_3_Parser;->parseCompanionAds(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v6, "NonLinearAds"

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lnet/iab/parser/VAST_2_3_Parser;->parseNonLinearAds(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found node \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" (type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") instead of <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Linear"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> or <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CompanionAds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> or <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NonLinearAds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Lnet/iab/exception/InvalidDocumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "Linear"

    aput-object v4, v1, v2

    const-string v2, "CompanionAds"

    aput-object v2, v1, v9

    const/4 v2, 0x2

    const-string v4, "NonLinearAds"

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Lnet/iab/exception/InvalidDocumentException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v0
.end method

.method private parseCreatives(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTCreative;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseCreative(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private parseHTMLResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;
    .locals 2

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource;

    invoke-direct {v0}, Lnet/iab/vast/ad/VASTCompanionResource;-><init>()V

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->HTML:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setType(Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;)V

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setContent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private parseIFrameResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;
    .locals 2

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource;

    invoke-direct {v0}, Lnet/iab/vast/ad/VASTCompanionResource;-><init>()V

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->IFrame:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setType(Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;)V

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setURI(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private parseImpression(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTImpression;
    .locals 3

    new-instance v0, Lnet/iab/vast/ad/VASTImpression;

    invoke-direct {v0}, Lnet/iab/vast/ad/VASTImpression;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTImpression;->setId(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTImpression;->setURI(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private parseInLine(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTInLine;
    .locals 6

    new-instance v1, Lnet/iab/vast/ad/VASTInLine;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTInLine;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "AdSystem"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseAdSystem(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAdSystem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setAdSystem(Lnet/iab/vast/ad/VASTAdSystem;)V

    goto :goto_1

    :cond_2
    const-string v4, "AdTitle"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setAdTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "Description"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "Survey"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setSurvey(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "Error"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "Impression"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseImpression(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTImpression;

    move-result-object v3

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTInLine;->getImpressions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v4, "Creatives"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseCreatives(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setCreatives(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "Extensions"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Pricing"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->parsePricing(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTPricing;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTInLine;->setPricing(Lnet/iab/vast/ad/VASTPricing;)V

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method

.method private parseLinear(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;
    .locals 6

    new-instance v1, Lnet/iab/vast/ad/VASTLinear;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTLinear;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "Duration"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseTimeToSeconds(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lnet/iab/vast/ad/VASTLinear;->setDurationInSeconds(J)V

    goto :goto_1

    :cond_2
    const-string v4, "TrackingEvents"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseTrackingEvents(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTLinear;->setTrackingEvents(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    const-string v4, "AdParameters"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTLinear;->setAdParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "VideoClicks"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseVideoClicks(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTVideoClicks;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTLinear;->setVideoClicks(Lnet/iab/vast/ad/VASTVideoClicks;)V

    goto :goto_1

    :cond_5
    const-string v4, "MediaFiles"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseMediaFiles(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTLinear;->setMediaFiles(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private parseMediaFiles(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTMediaFile;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Lnet/iab/vast/ad/VASTMediaFile;

    invoke-direct {v5}, Lnet/iab/vast/ad/VASTMediaFile;-><init>()V

    const-string v6, "apiFramework"

    invoke-direct {p0, v4, v6, v8}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setApiFramework(Ljava/lang/String;)V

    const-string v6, "bitrate"

    invoke-direct {p0, v4, v6, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setBitrate(I)V

    const-string/jumbo v6, "width"

    invoke-direct {p0, v4, v6, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setWidth(I)V

    const-string v6, "height"

    invoke-direct {p0, v4, v6, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setHeight(I)V

    const-string v6, "id"

    invoke-direct {p0, v4, v6, v8}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setId(Ljava/lang/String;)V

    const-string/jumbo v6, "type"

    invoke-direct {p0, v4, v6, v8}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setType(Ljava/lang/String;)V

    const-string/jumbo v6, "scalable"

    invoke-direct {p0, v4, v6, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setScalable(Z)V

    const-string v6, "maintainAspectRatio"

    invoke-direct {p0, v4, v6, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setMaintainAspectRatio(Z)V

    const-string v6, "delivery"

    const-string v7, "progressive"

    invoke-direct {p0, v4, v6, v7}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->parse(Ljava/lang/String;)Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/iab/vast/ad/VASTMediaFile;->setDelivery(Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;)V

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Lnet/iab/vast/ad/VASTMediaFile;->setURI(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private parseNonLinear(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTNonLinearAd;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v2, Lnet/iab/vast/ad/VASTNonLinearAd;

    invoke-direct {v2}, Lnet/iab/vast/ad/VASTNonLinearAd;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "AdParameters"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTNonLinearAd;->setAdParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "NonLinearClickThrough"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTNonLinearAd;->setClickThrough(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "StaticResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseStaticResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTNonLinearAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_4
    const-string v5, "HTMLResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseHTMLResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTNonLinearAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_5
    const-string v5, "IFrameResource"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lnet/iab/parser/VAST_2_3_Parser;->parseIFrameResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/iab/vast/ad/VASTNonLinearAd;->setResource(Lnet/iab/vast/ad/VASTCompanionResource;)V

    goto :goto_1

    :cond_6
    const-string v0, "apiFramework"

    invoke-direct {p0, p1, v0, v7}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setApiFramework(Ljava/lang/String;)V

    const-string v0, "expandedHeight"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setExpandedHeight(I)V

    const-string v0, "expandedWidth"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setExpandedWidth(I)V

    const-string v0, "height"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setHeight(I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setWidth(I)V

    const-string v0, "id"

    invoke-direct {p0, p1, v0, v7}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setId(Ljava/lang/String;)V

    const-string v0, "maintainAspectRatio"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setMaintainAspectRatio(Z)V

    const-string v0, "minSuggestedDuration"

    const-string v3, "00:00:00"

    invoke-direct {p0, p1, v0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/iab/parser/VAST_2_3_Parser;->parseTimeToSeconds(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setMinSuggestedDuration(I)V

    const-string/jumbo v0, "scalable"

    invoke-direct {p0, p1, v0, v1}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lnet/iab/vast/ad/VASTNonLinearAd;->setScalable(Z)V

    return-object v2
.end method

.method private parseNonLinearAds(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCreative;
    .locals 6

    new-instance v1, Lnet/iab/vast/ad/VASTNonLinearAds;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTNonLinearAds;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "NonLinear"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseNonLinear(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTNonLinearAd;

    move-result-object v3

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTNonLinearAds;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v4, "TrackingEvents"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseTrackingEvents(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTNonLinearAds;->setTrackingEvents(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private parsePricing(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTPricing;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lnet/iab/vast/ad/VASTPricing;

    const-string v1, "model"

    invoke-direct {p0, p1, v1, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency"

    invoke-direct {p0, p1, v2, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/iab/vast/ad/VASTPricing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseStaticResource(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTCompanionResource;
    .locals 3

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource;

    invoke-direct {v0}, Lnet/iab/vast/ad/VASTCompanionResource;-><init>()V

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->Static:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setType(Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;)V

    invoke-direct {p0, p1}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setURI(Ljava/lang/String;)V

    :cond_0
    const-string v1, "creativeType"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/iab/vast/ad/VASTCompanionResource;->setCreativeType(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseTimeToSeconds(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lnet/iab/IABUtils;->isNullOrEmptyString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseTrackingEvents(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/iab/vast/ad/VASTTracking;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "tracking"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lnet/iab/vast/ad/VASTTracking;

    invoke-direct {v4}, Lnet/iab/vast/ad/VASTTracking;-><init>()V

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/iab/vast/ad/VASTTracking;->setURI(Ljava/lang/String;)V

    const-string v5, "event"

    const-string v6, "creativeView"

    invoke-direct {p0, v3, v5, v6}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/iab/vast/ad/VASTTracking$TrackingEventType;->parse(Ljava/lang/String;)Lnet/iab/vast/ad/VASTTracking$TrackingEventType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/iab/vast/ad/VASTTracking;->setEvent(Lnet/iab/vast/ad/VASTTracking$TrackingEventType;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private parseVideoClicks(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTVideoClicks;
    .locals 7

    new-instance v1, Lnet/iab/vast/ad/VASTVideoClicks;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTVideoClicks;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lnet/iab/vast/ad/VASTIdURI;

    invoke-direct {v4}, Lnet/iab/vast/ad/VASTIdURI;-><init>()V

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lnet/iab/vast/ad/VASTIdURI;->setURI(Ljava/lang/String;)V

    :cond_2
    const-string v5, "id"

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lnet/iab/parser/VAST_2_3_Parser;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/iab/vast/ad/VASTIdURI;->setId(Ljava/lang/String;)V

    const-string v5, "ClickThrough"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Lnet/iab/vast/ad/VASTVideoClicks;->setClickThrough(Lnet/iab/vast/ad/VASTIdURI;)V

    goto :goto_1

    :cond_3
    const-string v5, "ClickTracking"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTVideoClicks;->getClickTrackings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v5, "CustomClick"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTVideoClicks;->getCustomClicks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private parseWrapper(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAd;
    .locals 6

    new-instance v1, Lnet/iab/vast/ad/VASTWrapper;

    invoke-direct {v1}, Lnet/iab/vast/ad/VASTWrapper;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "AdSystem"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseAdSystem(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAdSystem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTWrapper;->setAdSystem(Lnet/iab/vast/ad/VASTAdSystem;)V

    goto :goto_1

    :cond_2
    const-string v4, "VASTAdTagURI"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTWrapper;->setVASTAdTagURI(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "Error"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTWrapper;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "Impression"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseImpression(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTImpression;

    move-result-object v3

    invoke-virtual {v1}, Lnet/iab/vast/ad/VASTWrapper;->getImpressions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v4, "Creatives"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseCreatives(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/iab/vast/ad/VASTWrapper;->setCreatives(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    const-string v4, "Extensions"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_7
    return-object v1
.end method


# virtual methods
.method public parse(Lorg/w3c/dom/Node;Ljava/lang/String;)Lnet/iab/vast/VAST;
    .locals 6

    new-instance v1, Lnet/iab/vast/VAST;

    invoke-direct {v1, p2}, Lnet/iab/vast/VAST;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lnet/iab/parser/VAST_2_3_Parser;->parseAd(Lorg/w3c/dom/Node;)Lnet/iab/vast/ad/VASTAd;

    move-result-object v3

    invoke-virtual {v1}, Lnet/iab/vast/VAST;->getAds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method
