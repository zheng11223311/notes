.class public Lcn/com/mma/mobile/tracking/api/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# static fields
.field static final XMLFILE:Ljava/lang/String; = "sdkconfig.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doParser(Ljava/io/InputStream;)Lcn/com/mma/mobile/tracking/domain/SDK;
    .locals 15
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 25
    const/4 v11, 0x0

    .line 26
    .local v11, "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    const/4 v1, 0x0

    .line 27
    .local v1, "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    const/4 v3, 0x0

    .line 28
    .local v3, "company":Lcn/com/mma/mobile/tracking/domain/Company;
    const/4 v8, 0x0

    .line 30
    .local v8, "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 31
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "UTF-8"

    invoke-interface {v10, p0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 32
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, "_event":I
    move-object v9, v8

    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .local v9, "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v4, v3

    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .local v4, "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v2, v1

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .local v2, "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v12, v11

    .line 33
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .local v12, "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :goto_0
    const/4 v13, 0x1

    if-eq v0, v13, :cond_1d

    .line 34
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v11, v12

    .line 129
    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v9, v8

    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v4, v3

    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v2, v1

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v12, v11

    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto :goto_0

    .line 36
    :pswitch_1
    :try_start_1
    new-instance v11, Lcn/com/mma/mobile/tracking/domain/SDK;

    invoke-direct {v11}, Lcn/com/mma/mobile/tracking/domain/SDK;-><init>()V

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v1, v2

    .line 37
    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    goto :goto_1

    .line 39
    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :pswitch_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "elementName":Ljava/lang/String;
    const-string v13, "offlineCache"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    invoke-direct {v13}, Lcn/com/mma/mobile/tracking/domain/OfflineCache;-><init>()V

    iput-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    .line 42
    :cond_0
    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    if-eqz v13, :cond_3

    .line 43
    const-string v13, "length"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->length:Ljava/lang/String;

    .line 44
    :cond_1
    const-string v13, "queueExpirationSecs"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 45
    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->queueExpirationSecs:Ljava/lang/String;

    .line 46
    :cond_2
    const-string v13, "timeout"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->offlineCache:Lcn/com/mma/mobile/tracking/domain/OfflineCache;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/OfflineCache;->timeout:Ljava/lang/String;

    .line 49
    :cond_3
    const-string v13, "companies"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->companies:Ljava/util/List;

    .line 50
    :cond_4
    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->companies:Ljava/util/List;

    if-eqz v13, :cond_26

    const-string v13, "company"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    new-instance v3, Lcn/com/mma/mobile/tracking/domain/Company;

    invoke-direct {v3}, Lcn/com/mma/mobile/tracking/domain/Company;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    :goto_2
    if-eqz v3, :cond_25

    .line 52
    :try_start_2
    const-string v13, "name"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->name:Ljava/lang/String;

    if-nez v13, :cond_5

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->name:Ljava/lang/String;

    .line 53
    :cond_5
    const-string v13, "domain"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Lcn/com/mma/mobile/tracking/domain/Domain;

    invoke-direct {v13}, Lcn/com/mma/mobile/tracking/domain/Domain;-><init>()V

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->domain:Lcn/com/mma/mobile/tracking/domain/Domain;

    .line 54
    :cond_6
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->domain:Lcn/com/mma/mobile/tracking/domain/Domain;

    if-eqz v13, :cond_7

    .line 55
    const-string v13, "url"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->domain:Lcn/com/mma/mobile/tracking/domain/Domain;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Domain;->url:Ljava/lang/String;

    .line 57
    :cond_7
    const-string v13, "signature"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v13, Lcn/com/mma/mobile/tracking/domain/Signature;

    invoke-direct {v13}, Lcn/com/mma/mobile/tracking/domain/Signature;-><init>()V

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    .line 58
    :cond_8
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    if-eqz v13, :cond_a

    .line 59
    const-string v13, "publicKey"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Signature;->publicKey:Ljava/lang/String;

    .line 60
    :cond_9
    const-string v13, "paramKey"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->signature:Lcn/com/mma/mobile/tracking/domain/Signature;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Signature;->paramKey:Ljava/lang/String;

    .line 62
    :cond_a
    const-string v13, "switch"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v13, Lcn/com/mma/mobile/tracking/domain/Switch;

    invoke-direct {v13}, Lcn/com/mma/mobile/tracking/domain/Switch;-><init>()V

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    .line 63
    :cond_b
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    if-eqz v13, :cond_10

    .line 64
    const-string v13, "isTrackLocation"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 65
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcn/com/mma/mobile/tracking/domain/Switch;->isTrackLocation:Z

    .line 66
    :cond_c
    const-string v13, "offlineCacheExpiration"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 67
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Switch;->offlineCacheExpiration:Ljava/lang/String;

    .line 68
    :cond_d
    const-string v13, "encrypt"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Switch;->encrypt:Ljava/util/Map;

    .line 69
    :cond_e
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Switch;->encrypt:Ljava/util/Map;

    if-eqz v13, :cond_10

    .line 70
    const-string v13, "MAC"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "IDA"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "IMEI"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "ANDROID"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 71
    :cond_f
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->sswitch:Lcn/com/mma/mobile/tracking/domain/Switch;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Switch;->encrypt:Ljava/util/Map;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_10
    const-string v13, "config"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    new-instance v13, Lcn/com/mma/mobile/tracking/domain/Config;

    invoke-direct {v13}, Lcn/com/mma/mobile/tracking/domain/Config;-><init>()V

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    .line 77
    :cond_11
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    if-eqz v13, :cond_24

    .line 78
    const-string v13, "arguments"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 80
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Config;->arguments:Ljava/util/List;

    .line 81
    :cond_12
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Config;->arguments:Ljava/util/List;

    if-eqz v13, :cond_23

    const-string v13, "argument"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    new-instance v1, Lcn/com/mma/mobile/tracking/domain/Argument;

    invoke-direct {v1}, Lcn/com/mma/mobile/tracking/domain/Argument;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    :goto_3
    if-eqz v1, :cond_16

    .line 83
    :try_start_3
    const-string v13, "key"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 84
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcn/com/mma/mobile/tracking/domain/Argument;->key:Ljava/lang/String;

    .line 85
    :cond_13
    const-string v13, "value"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcn/com/mma/mobile/tracking/domain/Argument;->value:Ljava/lang/String;

    .line 86
    :cond_14
    const-string v13, "urlEncode"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 87
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Lcn/com/mma/mobile/tracking/domain/Argument;->urlEncode:Z

    .line 88
    :cond_15
    const-string v13, "isRequired"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 89
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Lcn/com/mma/mobile/tracking/domain/Argument;->isRequired:Z

    .line 91
    :cond_16
    const-string v13, "events"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 93
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcn/com/mma/mobile/tracking/domain/Config;->events:Ljava/util/List;

    .line 94
    :cond_17
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Config;->events:Ljava/util/List;

    if-eqz v13, :cond_22

    const-string v13, "event"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 95
    new-instance v8, Lcn/com/mma/mobile/tracking/domain/Event;

    invoke-direct {v8}, Lcn/com/mma/mobile/tracking/domain/Event;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 96
    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :goto_4
    if-eqz v8, :cond_1a

    .line 98
    :try_start_4
    const-string v13, "key"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcn/com/mma/mobile/tracking/domain/Event;->key:Ljava/lang/String;

    .line 99
    :cond_18
    const-string v13, "value"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcn/com/mma/mobile/tracking/domain/Event;->value:Ljava/lang/String;

    .line 100
    :cond_19
    const-string v13, "urlEncode"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v8, Lcn/com/mma/mobile/tracking/domain/Event;->urlEncode:Z

    .line 103
    :cond_1a
    :goto_5
    const-string v13, "separator"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->separator:Ljava/lang/String;

    .line 104
    :cond_1b
    const-string v13, "equalizer"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->equalizer:Ljava/lang/String;

    .line 105
    :cond_1c
    const-string v13, "timeStampUseSecond"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->timeStampUseSecond:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto/16 :goto_1

    .line 111
    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :pswitch_3
    :try_start_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "endElement":Ljava/lang/String;
    const-string v13, "company"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 113
    iget-object v13, v12, Lcn/com/mma/mobile/tracking/domain/SDK;->companies:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 114
    const/4 v3, 0x0

    .line 116
    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    :goto_6
    :try_start_6
    const-string v13, "argument"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 117
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Config;->arguments:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 119
    const/4 v1, 0x0

    .line 121
    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    :goto_7
    :try_start_7
    const-string v13, "event"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 122
    iget-object v13, v3, Lcn/com/mma/mobile/tracking/domain/Company;->config:Lcn/com/mma/mobile/tracking/domain/Config;

    iget-object v13, v13, Lcn/com/mma/mobile/tracking/domain/Config;->events:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 123
    const/4 v8, 0x0

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto/16 :goto_1

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v7    # "endElement":Ljava/lang/String;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_1d
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v11, v12

    .line 134
    .end local v0    # "_event":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :goto_8
    return-object v11

    .line 131
    :catch_0
    move-exception v5

    .line 132
    .local v5, "e":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 131
    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v0    # "_event":I
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :catch_1
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto :goto_9

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :catch_2
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto :goto_9

    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto :goto_9

    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :catch_4
    move-exception v5

    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto :goto_9

    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v7    # "endElement":Ljava/lang/String;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_1e
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto/16 :goto_1

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_1f
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    goto :goto_7

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    :cond_20
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    goto :goto_6

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v7    # "endElement":Ljava/lang/String;
    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :cond_21
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto/16 :goto_1

    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_22
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    goto/16 :goto_4

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :cond_23
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    goto/16 :goto_3

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    :cond_24
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    goto/16 :goto_5

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    :cond_25
    move-object v8, v9

    .end local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    move-object v1, v2

    .end local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    move-object v11, v12

    .end local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    goto/16 :goto_1

    .end local v1    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .end local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .end local v8    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .end local v11    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    .restart local v2    # "argument":Lcn/com/mma/mobile/tracking/domain/Argument;
    .restart local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v9    # "event":Lcn/com/mma/mobile/tracking/domain/Event;
    .restart local v12    # "sdk":Lcn/com/mma/mobile/tracking/domain/SDK;
    :cond_26
    move-object v3, v4

    .end local v4    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    .restart local v3    # "company":Lcn/com/mma/mobile/tracking/domain/Company;
    goto/16 :goto_2

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
