.class Lcom/tudou/adapter/IndexSelectnessAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexSelectnessAdapter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$2;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$2;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexSelectnessAdapter;->access$100(Lcom/tudou/adapter/IndexSelectnessAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$2;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->access$000(Lcom/tudou/adapter/IndexSelectnessAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    iget-object v2, p0, Lcom/tudou/adapter/IndexSelectnessAdapter$2;->this$0:Lcom/tudou/adapter/IndexSelectnessAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexSelectnessAdapter;->access$100(Lcom/tudou/adapter/IndexSelectnessAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "t1.home_theme.channel_"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 127
    return-void
.end method
