.class public Lcom/alipay/android/mini/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/util/h$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 246
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/mini/util/h;->a:J

    .line 247
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/mini/util/h;->b:Z

    .line 248
    const-string v0, ""

    sput-object v0, Lcom/alipay/android/mini/util/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/mini/util/h;->a:J

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/mini/util/h;->b:Z

    .line 255
    return-void
.end method

.method public static a(Lcom/alipay/android/mini/util/h$a;)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 15
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-01"

    const-string v2, "openPage"

    const-string v4, "cashier"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 59
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-06"

    const-string v2, "clicked"

    const-string v4, ""

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 40
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-04"

    const-string v2, "clicked"

    const-string v4, ""

    const-string v7, ""

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 84
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-10"

    const-string v2, "neterror"

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sput-object p3, Lcom/alipay/android/mini/util/h;->c:Ljava/lang/String;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    iput-object v1, v0, Lcom/alipay/android/mini/util/h$a;->i:Ljava/lang/String;

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 92
    return-void
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    sget-boolean v2, Lcom/alipay/android/mini/util/h;->b:Z

    if-nez v2, :cond_0

    sget-wide v2, Lcom/alipay/android/mini/util/h;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 261
    sget-wide v2, Lcom/alipay/android/mini/util/h;->a:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/android/mini/util/h;->a:J

    .line 262
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/mini/util/h;->b:Z

    .line 264
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 23
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-02"

    const-string v2, "openPage"

    const-string v4, "cashier-init"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 27
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 76
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-08"

    const-string v2, "clicked"

    const-string v4, ""

    const-string v6, "exit"

    const-string v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 80
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 50
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-05"

    const-string v2, "clicked"

    const-string v6, "check"

    const-string v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 55
    return-void
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 271
    sget-boolean v0, Lcom/alipay/android/mini/util/h;->b:Z

    if-eqz v0, :cond_0

    .line 272
    sget-wide v0, Lcom/alipay/android/mini/util/h;->a:J

    .line 274
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-03"

    const-string v2, "openPage"

    const-string v4, "cashier-card-no"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 36
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 115
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-15"

    const-string v2, "clicked"

    const-string v4, "defaultPayModeView"

    const-string v5, "defaultPayModeView"

    const-string/jumbo v6, "selectPayMode"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object p1, v0, Lcom/alipay/android/mini/util/h$a;->h:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 122
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/alipay/android/mini/util/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 67
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-JJ-07"

    const-string v2, "clicked"

    const-string v4, ""

    const-string v5, "cashier-init"

    const-string v6, "details"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 72
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 176
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-21"

    const-string v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "selectAmount "

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-object p1, v0, Lcom/alipay/android/mini/util/h$a;->h:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 183
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-13"

    const-string v2, "clicked"

    const-string v4, "moreHome"

    const-string v5, "paySetIndex"

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 101
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 105
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-14"

    const-string v2, "clicked"

    const-string v4, "defaultPayModeView"

    const-string v5, "paySetIndex"

    const-string v6, "defaultPay"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 111
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 126
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-16"

    const-string v2, "clicked"

    const-string v4, "paySetIndex"

    const-string v5, "defaultPayModeView"

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 133
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 137
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-17"

    const-string v2, "clicked"

    const-string/jumbo v4, "savePaySetSuccess"

    const-string v5, "defaultPayModeView"

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 144
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 148
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-18"

    const-string v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string v5, "paySetIndex"

    const-string/jumbo v6, "smallPay"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 154
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 158
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-19"

    const-string v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string v6, "open"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 163
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 167
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-20"

    const-string v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string v6, "close"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 172
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 187
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-22"

    const-string v2, "clicked"

    const-string v4, "paySetIndex"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 194
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 198
    new-instance v0, Lcom/alipay/android/mini/util/h$a;

    const-string v1, "UC-MORE-23"

    const-string v2, "clicked"

    const-string v4, "isSavePaySetView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string v6, "backIcon"

    const-string v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->a(Lcom/alipay/android/mini/util/h$a;)V

    .line 205
    return-void
.end method
