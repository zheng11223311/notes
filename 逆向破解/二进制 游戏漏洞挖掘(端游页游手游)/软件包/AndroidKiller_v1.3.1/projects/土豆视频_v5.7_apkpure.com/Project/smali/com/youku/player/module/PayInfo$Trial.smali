.class public Lcom/youku/player/module/PayInfo$Trial;
.super Ljava/lang/Object;
.source "PayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/module/PayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trial"
.end annotation


# instance fields
.field public episodes:I

.field public time:I

.field public tip:Ljava/lang/String;

.field public trialStr:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
