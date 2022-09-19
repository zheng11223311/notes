.class public Lcom/youdo/ad/cfg/XAdSDKConf;
.super Ljava/lang/Object;


# static fields
.field private static theInstance:Lcom/youdo/ad/cfg/XAdSDKConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/youdo/ad/cfg/XAdSDKConf;->theInstance:Lcom/youdo/ad/cfg/XAdSDKConf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/youdo/ad/cfg/XAdSDKConf;
    .locals 1

    sget-object v0, Lcom/youdo/ad/cfg/XAdSDKConf;->theInstance:Lcom/youdo/ad/cfg/XAdSDKConf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/ad/cfg/XAdSDKConf;

    invoke-direct {v0}, Lcom/youdo/ad/cfg/XAdSDKConf;-><init>()V

    sput-object v0, Lcom/youdo/ad/cfg/XAdSDKConf;->theInstance:Lcom/youdo/ad/cfg/XAdSDKConf;

    :cond_0
    sget-object v0, Lcom/youdo/ad/cfg/XAdSDKConf;->theInstance:Lcom/youdo/ad/cfg/XAdSDKConf;

    return-object v0
.end method


# virtual methods
.method public calculateAcceptableMaxAdNum(I)I
    .locals 2

    const/16 v1, 0x100

    const/4 v0, 0x0

    if-gt p1, v1, :cond_0

    :cond_0
    if-le p1, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    const/16 v1, 0x200

    if-le p1, v1, :cond_2

    const/16 v0, 0x32

    :cond_2
    const/16 v1, 0x400

    if-le p1, v1, :cond_3

    const/16 v0, 0x4b

    :cond_3
    const/16 v1, 0x600

    if-le p1, v1, :cond_4

    const/16 v0, 0x64

    :cond_4
    const/16 v1, 0x800

    if-le p1, v1, :cond_5

    const/16 v0, 0xc8

    :cond_5
    return v0
.end method
