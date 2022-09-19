.class public Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;
.super Ljava/lang/Object;
.source "SubscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field public bigPic:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public formatTotalTime:Ljava/lang/String;

.field public isFavourite:Z

.field public limit:I

.field public playLink:Ljava/lang/String;

.field final synthetic this$2:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->this$2:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDownload()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
