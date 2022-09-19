.class public Lio/rong/imlib/navigation/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# static fields
.field private static final CONFIGURE:Ljava/lang/String; = "configure"

.field private static final CONVERSATION_TYPES:Ljava/lang/String; = "conversationTypes"

.field private static final DISTANCE_FILTER:Ljava/lang/String; = "distanceFilter"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final MAX_PARTICIPANTS:Ljava/lang/String; = "maxParticipant"

.field private static final MSG_ACK:Ljava/lang/String; = "msgAck"

.field private static final NAVIGATION:Ljava/lang/String; = "navigation"

.field private static final REFRESH_INTERVAL:Ljava/lang/String; = "refreshInterval"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lio/rong/imlib/navigation/Navigation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imlib/navigation/Navigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationData(Landroid/content/Context;)Lio/rong/imlib/navigation/NavigationConfig;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "data":Ljava/lang/String;
    const/4 v0, 0x0

    .line 62
    .local v0, "config":Lio/rong/imlib/navigation/NavigationConfig;
    if-eqz p0, :cond_0

    .line 63
    const-string v3, "navigation"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 64
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "navigation"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-static {v1}, Lio/rong/imlib/navigation/Navigation;->parse(Ljava/lang/String;)Lio/rong/imlib/navigation/NavigationConfig;

    move-result-object v0

    .line 68
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method private static parse(Ljava/lang/String;)Lio/rong/imlib/navigation/NavigationConfig;
    .locals 27
    .param p0, "naviData"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v10, 0x0

    .line 80
    .local v10, "info":Lio/rong/imlib/navigation/NavigationConfig;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 81
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 83
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 84
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v24, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    .local v12, "is":Ljava/io/InputStream;
    invoke-virtual {v3, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 96
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v6, :cond_7

    .line 97
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 98
    .local v18, "root":Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 99
    .local v4, "children":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_7

    .line 100
    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 101
    .local v17, "node":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, "name":Ljava/lang/String;
    if-eqz v16, :cond_6

    const-string v24, "location"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 103
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    .line 104
    .local v15, "n":Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 105
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 106
    new-instance v10, Lio/rong/imlib/navigation/NavigationConfig;

    .end local v10    # "info":Lio/rong/imlib/navigation/NavigationConfig;
    invoke-direct {v10}, Lio/rong/imlib/navigation/NavigationConfig;-><init>()V

    .line 108
    .restart local v10    # "info":Lio/rong/imlib/navigation/NavigationConfig;
    :try_start_1
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v14, "jsonObj":Lorg/json/JSONObject;
    const-string v24, "configure"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 110
    const-string v24, "configure"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lio/rong/imlib/navigation/NavigationConfig;->setConfigure(Z)V

    .line 113
    :cond_0
    const-string v24, "conversationTypes"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 114
    const-string v24, "conversationTypes"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 115
    .local v2, "array":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 116
    .local v20, "types":[I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_1

    .line 117
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v24

    aput v24, v20, v13
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 116
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v15    # "n":Lorg/w3c/dom/Node;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Node;
    .end local v18    # "root":Lorg/w3c/dom/Element;
    .end local v20    # "types":[I
    .end local v22    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 87
    .local v5, "config":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v5    # "config":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v21

    .line 89
    .local v21, "unsupport":Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v21    # "unsupport":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v11

    .line 91
    .local v11, "io":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v11    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v19

    .line 93
    .local v19, "sax":Lorg/xml/sax/SAXException;
    invoke-virtual/range {v19 .. v19}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v19    # "sax":Lorg/xml/sax/SAXException;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v4    # "children":Lorg/w3c/dom/NodeList;
    .restart local v9    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    .restart local v15    # "n":Lorg/w3c/dom/Node;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "node":Lorg/w3c/dom/Node;
    .restart local v18    # "root":Lorg/w3c/dom/Element;
    .restart local v20    # "types":[I
    .restart local v22    # "value":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lio/rong/imlib/navigation/NavigationConfig;->setConversationTypes([I)V

    .line 122
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v13    # "j":I
    .end local v20    # "types":[I
    :cond_2
    const-string v24, "maxParticipant"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 123
    const-string v24, "maxParticipant"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lio/rong/imlib/navigation/NavigationConfig;->setMaxParticipant(I)V

    .line 126
    :cond_3
    const-string/jumbo v24, "refreshInterval"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 127
    const-string/jumbo v24, "refreshInterval"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lio/rong/imlib/navigation/NavigationConfig;->setRefreshInterval(I)V

    .line 130
    :cond_4
    const-string v24, "distanceFilter"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 131
    const-string v24, "distanceFilter"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lio/rong/imlib/navigation/NavigationConfig;->setDistanceFilter(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 99
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    .end local v15    # "n":Lorg/w3c/dom/Node;
    .end local v22    # "value":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 134
    .restart local v15    # "n":Lorg/w3c/dom/Node;
    .restart local v22    # "value":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 135
    .local v7, "e":Lorg/json/JSONException;
    sget-object v24, Lio/rong/imlib/navigation/Navigation;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parse : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 138
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v15    # "n":Lorg/w3c/dom/Node;
    .end local v22    # "value":Ljava/lang/String;
    :cond_6
    if-eqz v16, :cond_5

    const-string v24, "msgAck"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 139
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    .line 140
    .local v23, "xmlNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 142
    .restart local v22    # "value":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 145
    :try_start_3
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    .line 160
    :catch_5
    move-exception v7

    .line 161
    .restart local v7    # "e":Lorg/json/JSONException;
    sget-object v24, Lio/rong/imlib/navigation/Navigation;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parse : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 168
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v9    # "i":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "node":Lorg/w3c/dom/Node;
    .end local v18    # "root":Lorg/w3c/dom/Element;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "xmlNode":Lorg/w3c/dom/Node;
    :cond_7
    return-object v10
.end method

.method public static setNavigationData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "naviData"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v2, "navigation"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "navigation"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method
