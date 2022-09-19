.class public Lcom/youku/vo/SubscribeBean$Recommend$LastItem;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean$Recommend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LastItem"
.end annotation


# instance fields
.field public bigPic:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public formatTotalTime:Ljava/lang/String;

.field public limit:I

.field public playLink:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/SubscribeBean$Recommend;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubscribeBean$Recommend;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->this$1:Lcom/youku/vo/SubscribeBean$Recommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDownload()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/youku/vo/SubscribeBean$Recommend$LastItem;->limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
