.class public Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;
.super Ljava/lang/Object;
.source "LaifengLog.java"


# static fields
.field private static MYLOGFILEName:Ljava/lang/String;

.field private static MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

.field private static MYLOG_SWITCH:Ljava/lang/Boolean;

.field private static MYLOG_TYPE:C

.field private static MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean;

.field private static SDCARD_LOG_FILE_SAVE_DAYS:I

.field private static logfile:Ljava/text/SimpleDateFormat;

.field private static myLogSdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_SWITCH:Ljava/lang/Boolean;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean;

    .line 25
    const/16 v0, 0x76

    sput-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    .line 26
    const-string v0, "/sdcard/"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->SDCARD_LOG_FILE_SAVE_DAYS:I

    .line 28
    const-string v0, "LaifengLog.txt"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOGFILEName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->myLogSdf:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->logfile:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 43
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 63
    return-void
.end method

.method public static delFile()V
    .locals 5

    .prologue
    .line 132
    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->logfile:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->getDateBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "needDelFiel":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_PATH_SDCARD_DIR:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOGFILEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 39
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 59
    return-void
.end method

.method private static getDateBefore()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 143
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 144
    .local v1, "nowtime":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    .local v0, "now":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sget v3, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->SDCARD_LOG_FILE_SAVE_DAYS:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 47
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 67
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "level"    # C

    .prologue
    const/16 v4, 0x77

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/16 v1, 0x76

    .line 83
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    if-ne v3, p2, :cond_3

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-eq v3, v0, :cond_0

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_3

    .line 85
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_WRITE_TO_FILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->writeLogtoFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    return-void

    .line 86
    :cond_3
    if-ne v4, p2, :cond_5

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-eq v4, v0, :cond_4

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_5

    .line 87
    :cond_4
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_5
    if-ne v2, p2, :cond_7

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-eq v2, v0, :cond_6

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_7

    .line 89
    :cond_6
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_7
    const/16 v0, 0x69

    if-ne v0, p2, :cond_9

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-eq v2, v0, :cond_8

    sget-char v0, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOG_TYPE:C

    if-ne v1, v0, :cond_9

    .line 91
    :cond_8
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_9
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 51
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    const/16 v0, 0x76

    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 71
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x77

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 35
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    const/16 v0, 0x77

    invoke-static {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->log(Ljava/lang/String;Ljava/lang/String;C)V

    .line 55
    return-void
.end method

.method private static writeLogtoFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "mylogtype"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 107
    .local v6, "nowtime":Ljava/util/Date;
    sget-object v7, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->logfile:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "needWriteFiel":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->myLogSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "needWriteMessage":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v7, "/sdcard/"

    sget-object v8, Lcom/youku/laifeng/libcuteroom/utils/LaifengLog;->MYLOGFILEName:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 116
    :cond_0
    new-instance v3, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v3, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 117
    .local v3, "filerWriter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 118
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 120
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 121
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v3    # "filerWriter":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
