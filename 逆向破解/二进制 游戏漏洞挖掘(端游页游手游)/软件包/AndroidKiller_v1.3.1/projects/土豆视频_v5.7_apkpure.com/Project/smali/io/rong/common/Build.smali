.class public Lio/rong/common/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static PUSH_VERSION:I

.field public static SDK_VERSION:Ljava/lang/String;

.field public static SDK_WITH_VOIP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "2.4.5"

    sput-object v0, Lio/rong/common/Build;->SDK_VERSION:Ljava/lang/String;

    .line 8
    const/16 v0, 0x18

    sput v0, Lio/rong/common/Build;->PUSH_VERSION:I

    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/common/Build;->SDK_WITH_VOIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
