.class Lcom/tudou/adapter/IndexSelectnessAdapter$1;
.super Ljava/lang/Object;
.source "IndexSelectnessAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexSelectnessAdapter;->onBindViewHolder(Lcom/tudou/adapter/IndexSelectnessCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

.field final synthetic val$aInfo:Lcom/youku/vo/CardInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexSelectnessAdapter;Lcom/youku/vo/CardInfo;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->val$aInfo:Lcom/youku/vo/CardInfo;

    iput p3, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v4, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->val$aInfo:Lcom/youku/vo/CardInfo;

    iget-object v2, v4, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 99
    .local v2, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v4, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-static {v4}, Lcom/tudou/adapter/IndexSelectnessAdapter;->access$000(Lcom/tudou/adapter/IndexSelectnessAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "cmstype"

    iget-object v5, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-static {v5}, Lcom/tudou/adapter/IndexSelectnessAdapter;->access$100(Lcom/tudou/adapter/IndexSelectnessAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v4, "cmsname"

    iget-object v5, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "video_id":Ljava/lang/String;
    iget-object v4, v2, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    iget-object v3, v2, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 111
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t1.home_theme.videoclick__.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$1;->val$i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "refercode":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 114
    return-void

    .line 109
    .end local v1    # "refercode":Ljava/lang/String;
    :cond_0
    iget-object v3, v2, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0
.end method
