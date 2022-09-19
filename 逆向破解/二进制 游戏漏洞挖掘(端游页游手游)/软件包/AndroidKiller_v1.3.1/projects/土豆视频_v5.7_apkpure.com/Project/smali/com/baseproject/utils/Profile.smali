.class public Lcom/baseproject/utils/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static COOKIE:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static FROM:I = 0x0

.field public static FROM_TUDOU:I = 0x0

.field public static FROM_TUDOU_HD:I = 0x0

.field public static FROM_YOUKU:I = 0x0

.field public static LOG:Z = false

.field public static TAG:Ljava/lang/String; = null

.field public static final TIMEOUT:I = 0x7530

.field public static User_Agent:Ljava/lang/String;

.field public static isLogined:Z

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/baseproject/utils/Profile;->COOKIE:Ljava/lang/String;

    .line 52
    sput-boolean v1, Lcom/baseproject/utils/Profile;->DEBUG:Z

    .line 54
    sput-boolean v1, Lcom/baseproject/utils/Profile;->LOG:Z

    .line 56
    sput v1, Lcom/baseproject/utils/Profile;->FROM_YOUKU:I

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/baseproject/utils/Profile;->FROM_TUDOU:I

    .line 58
    const/4 v0, 0x2

    sput v0, Lcom/baseproject/utils/Profile;->FROM_TUDOU_HD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "from"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "useragent"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lcom/baseproject/utils/Profile;->initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 30
    sput p0, Lcom/baseproject/utils/Profile;->FROM:I

    .line 31
    return-void
.end method

.method public static initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "useragent"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sput-object p0, Lcom/baseproject/utils/Profile;->TAG:Ljava/lang/String;

    .line 23
    sput-object p1, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    .line 24
    sput-object p2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static setLoginState(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p0, "bLogined"    # Ljava/lang/Boolean;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/baseproject/utils/Profile;->isLogined:Z

    .line 41
    sput-object p1, Lcom/baseproject/utils/Profile;->COOKIE:Ljava/lang/String;

    .line 42
    return-void
.end method
