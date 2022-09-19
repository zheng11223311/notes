.class public Lcom/baseproject/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z

.field public static ERROR:Z

.field public static INFO:Z

.field public static LOGLEVEL:I

.field public static VERBOSE:Z

.field public static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    sput v2, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    .line 20
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/baseproject/utils/Logger;->VERBOSE:Z

    .line 21
    sget-boolean v0, Lcom/baseproject/utils/Profile;->LOG:Z

    sput-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    .line 22
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/baseproject/utils/Logger;->INFO:Z

    .line 23
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    if-le v0, v1, :cond_2

    :goto_2
    sput-boolean v1, Lcom/baseproject/utils/Logger;->WARN:Z

    .line 24
    sget-boolean v0, Lcom/baseproject/utils/Profile;->LOG:Z

    sput-boolean v0, Lcom/baseproject/utils/Logger;->ERROR:Z

    return-void

    :cond_0
    move v0, v2

    .line 20
    goto :goto_0

    :cond_1
    move v0, v2

    .line 22
    goto :goto_1

    :cond_2
    move v1, v2

    .line 23
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 57
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 62
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-boolean v0, Lcom/baseproject/utils/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-boolean v0, Lcom/baseproject/utils/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 77
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    sget-boolean v0, Lcom/baseproject/utils/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 82
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    sget-boolean v0, Lcom/baseproject/utils/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_1
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 4
    .param p0, "debugMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    .line 28
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/baseproject/utils/Logger;->VERBOSE:Z

    .line 29
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    .line 30
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/baseproject/utils/Logger;->INFO:Z

    .line 31
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/baseproject/utils/Logger;->WARN:Z

    .line 32
    sget v0, Lcom/baseproject/utils/Logger;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lcom/baseproject/utils/Logger;->ERROR:Z

    .line 33
    return-void

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0

    :cond_1
    move v0, v1

    .line 28
    goto :goto_1

    :cond_2
    move v0, v1

    .line 29
    goto :goto_2

    :cond_3
    move v0, v1

    .line 30
    goto :goto_3

    :cond_4
    move v0, v1

    .line 31
    goto :goto_4

    :cond_5
    move v2, v1

    .line 32
    goto :goto_5
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 37
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 42
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    sget-boolean v0, Lcom/baseproject/utils/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_1
    return-void
.end method
