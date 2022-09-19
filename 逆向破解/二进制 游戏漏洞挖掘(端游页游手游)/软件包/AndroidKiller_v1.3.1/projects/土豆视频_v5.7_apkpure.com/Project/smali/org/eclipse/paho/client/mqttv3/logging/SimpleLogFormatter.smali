.class public Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleLogFormatter.java"


# instance fields
.field final ls:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 16
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->ls:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static left(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "fillChar"    # C

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 88
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 83
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p1, v2

    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 22
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 28
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v9, "sb":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "{0, date, yy-MM-dd} {0, time, kk:mm:ss.SSSS} "

    .line 31
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    aput-object v18, v16, v17

    .line 30
    invoke-static/range {v15 .. v16}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 30
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "cnm":Ljava/lang/String;
    const-string v4, ""

    .line 34
    .local v4, "cn":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 36
    .local v5, "cnl":I
    const/16 v14, 0x14

    if-le v5, v14, :cond_2

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v5, -0x13

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    .end local v5    # "cnl":I
    :cond_0
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x17

    const/16 v17, 0x20

    invoke-static/range {v15 .. v17}, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->left(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/paho/client/mqttv3/logging/SimpleLogFormatter;->ls:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 49
    const-string v14, "Throwable occurred: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v13

    .line 51
    .local v13, "t":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 53
    .local v7, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 54
    .local v12, "sw":Ljava/io/StringWriter;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .local v8, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {v13, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 56
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    if-eqz v8, :cond_1

    .line 60
    :try_start_2
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    .end local v8    # "pw":Ljava/io/PrintWriter;
    .end local v12    # "sw":Ljava/io/StringWriter;
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 39
    .restart local v5    # "cnl":I
    :cond_2
    const/4 v14, 0x1

    new-array v11, v14, [C

    const/4 v14, 0x0

    const/16 v15, 0x20

    aput-char v15, v11, v14

    .line 40
    .local v11, "sp":[C
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 41
    .local v10, "sb1":Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v10, v11, v14, v15}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 57
    .end local v5    # "cnl":I
    .end local v10    # "sb1":Ljava/lang/StringBuffer;
    .end local v11    # "sp":[C
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    .line 58
    :goto_2
    if-eqz v7, :cond_3

    .line 60
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 65
    :cond_3
    :goto_3
    throw v14

    .line 61
    :catch_0
    move-exception v15

    goto :goto_3

    .end local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v12    # "sw":Ljava/io/StringWriter;
    :catch_1
    move-exception v14

    goto :goto_1

    .line 57
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method
