.class Lcom/tudou/adapter/IndexItemType$3;
.super Ljava/lang/Object;
.source "IndexItemType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexItemType;->setIndexCellValueBoke(Lcom/tudou/adapter/IndexItemViewCache;Lcom/youku/vo/CardInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexItemType;

.field final synthetic val$aCardInfo:Lcom/youku/vo/CardInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexItemType;Lcom/youku/vo/CardInfo;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tudou/adapter/IndexItemType$3;->this$0:Lcom/tudou/adapter/IndexItemType;

    iput-object p2, p0, Lcom/tudou/adapter/IndexItemType$3;->val$aCardInfo:Lcom/youku/vo/CardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Lcom/youku/vo/SkipInfo;

    invoke-direct {v0}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 173
    .local v0, "info":Lcom/youku/vo/SkipInfo;
    const-string v1, "podcaster"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemType$3;->val$aCardInfo:Lcom/youku/vo/CardInfo;

    iget-object v1, v1, Lcom/youku/vo/CardInfo;->owner_nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemType$3;->val$aCardInfo:Lcom/youku/vo/CardInfo;

    iget-object v1, v1, Lcom/youku/vo/CardInfo;->owner_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->user_id:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemType$3;->this$0:Lcom/tudou/adapter/IndexItemType;

    iget-object v1, v1, Lcom/tudou/adapter/IndexItemType;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 177
    return-void
.end method
