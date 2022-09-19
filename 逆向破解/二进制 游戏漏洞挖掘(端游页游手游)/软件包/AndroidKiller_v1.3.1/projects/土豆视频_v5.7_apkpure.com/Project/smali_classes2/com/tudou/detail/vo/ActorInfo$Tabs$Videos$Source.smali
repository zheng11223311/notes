.class public Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;
.super Ljava/lang/Object;
.source "ActorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Source"
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public is_tudou:I

.field public play_mode:Ljava/lang/String;

.field public site_id:Ljava/lang/String;

.field public site_name:Ljava/lang/String;

.field final synthetic this$2:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos$Source;->this$2:Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
