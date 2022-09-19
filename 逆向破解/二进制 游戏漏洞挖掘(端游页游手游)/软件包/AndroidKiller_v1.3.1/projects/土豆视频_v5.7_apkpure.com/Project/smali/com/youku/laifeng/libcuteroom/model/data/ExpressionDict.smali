.class public Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;
.super Ljava/lang/Object;
.source "ExpressionDict.java"


# static fields
.field private static dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private realMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;",
            ">;"
        }
    .end annotation
.end field

.field private reg1:Ljava/lang/String;

.field private reg1LowLv:Ljava/lang/String;

.field private reg2:Ljava/lang/String;

.field private reg2LowLv:Ljava/lang/String;

.field private resMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    .line 27
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;

    .line 30
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->resMap:Ljava/util/Map;

    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->realMap:Ljava/util/Map;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "emotionmap.xml"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->parseXML(Ljava/io/InputStream;Z)V

    .line 35
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "emotionmapguizu.xml"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 36
    .local v2, "is2":Ljava/io/InputStream;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->parseXML(Ljava/io/InputStream;Z)V

    .line 37
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "is2":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    if-nez v0, :cond_1

    .line 52
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->dict:Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseXML(Ljava/io/InputStream;Z)V
    .locals 22
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "guizu"    # Z

    .prologue
    .line 62
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 64
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 65
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 66
    .local v5, "document":Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 67
    .local v16, "root":Lorg/w3c/dom/Element;
    const-string v19, "dict"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 68
    .local v4, "dictNodes":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 69
    new-instance v8, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;

    invoke-direct {v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;-><init>()V

    .line 70
    .local v8, "expression":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    invoke-interface {v4, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 71
    .local v15, "personNode":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 72
    .local v14, "personChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    .line 73
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 74
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 75
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 76
    .local v7, "element":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "key"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 77
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v8, v12}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->setResName(Ljava/lang/String;)V

    .line 79
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1LowLv:Ljava/lang/String;

    .line 92
    .end local v12    # "key":Ljava/lang/String;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->resMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->getResName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->realMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->getRealName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v7    # "element":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 83
    .restart local v7    # "element":Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "string"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 84
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 85
    .local v17, "string":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->setRealName(Ljava/lang/String;)V

    .line 86
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\\["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\\"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, "tmp":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 98
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "dictNodes":Lorg/w3c/dom/NodeList;
    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "expression":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v13    # "node":Lorg/w3c/dom/Node;
    .end local v14    # "personChildNodes":Lorg/w3c/dom/NodeList;
    .end local v15    # "personNode":Lorg/w3c/dom/Element;
    .end local v16    # "root":Lorg/w3c/dom/Element;
    .end local v17    # "string":Ljava/lang/String;
    .end local v18    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 99
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v19, :cond_3

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 68
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "dictNodes":Lorg/w3c/dom/NodeList;
    .restart local v5    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "expression":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    .restart local v10    # "i":I
    .restart local v11    # "index":I
    .restart local v14    # "personChildNodes":Lorg/w3c/dom/NodeList;
    .restart local v15    # "personNode":Lorg/w3c/dom/Element;
    .restart local v16    # "root":Lorg/w3c/dom/Element;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 97
    .end local v8    # "expression":Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    .end local v11    # "index":I
    .end local v14    # "personChildNodes":Lorg/w3c/dom/NodeList;
    .end local v15    # "personNode":Lorg/w3c/dom/Element;
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public getConvertStringWithRealName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->getExpressionString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public getConvertStringWithRealNameLowLv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg2LowLv:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->getExpressionString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getConvertStringWithResName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->reg1:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->getExpressionString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public getExpressionByRealName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    .locals 1
    .param p1, "realName"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->realMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;

    return-object v0
.end method

.method public getExpressionByResName(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->resMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;

    return-object v0
.end method
