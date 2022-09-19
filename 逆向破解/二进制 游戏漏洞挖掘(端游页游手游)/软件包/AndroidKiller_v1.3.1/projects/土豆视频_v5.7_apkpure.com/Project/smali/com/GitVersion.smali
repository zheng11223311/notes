.class public Lcom/GitVersion;
.super Ljava/lang/Object;


# static fields
.field public static final BUILD_VERSION:Ljava/lang/String; = "YouDoAdSDK Runtime --- 2015-09-08 16:59:42 -- 1412 -- master -- 42e1aa3b49846925d8865dd6937033beb218ee3a"

.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final SEQ_REVERSION:Ljava/lang/String; = "1412"

.field public static final SHA_REVERSION:Ljava/lang/String; = "42e1aa3b49846925d8865dd6937033beb218ee3a"

.field public static final TAG:Ljava/lang/String; = "master"

.field public static final TIME_STAMP:Ljava/lang/String; = "2015-09-08 16:59:42"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/GitVersion;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
