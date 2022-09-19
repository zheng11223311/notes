.class Lcom/tudou/adapter/IndexPageAdapter$19;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initNormalTitle(Lcom/tudou/adapter/IndexItemNormalTitle;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$mainSkipInfo:Lcom/youku/vo/SkipInfo;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/SkipInfo;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$19;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$19;->val$mainSkipInfo:Lcom/youku/vo/SkipInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$19;->val$mainSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$19;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1037
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$19;->val$mainSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string v1, "t1.home_shome.channel__"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1040
    return-void
.end method
