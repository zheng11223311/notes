.class abstract Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InPlaceAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/corncop/capricornus/zip/ZipUtil$1;

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;-><init>()V

    return-void
.end method


# virtual methods
.method abstract act(Ljava/io/File;)Z
.end method
