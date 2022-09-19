.class Lcom/youku/adapter/ManGridViewAdapter$2;
.super Ljava/lang/Object;
.source "ManGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/ManGridViewAdapter;->setOnClickListener(Landroid/view/View;Lcom/youku/vo/TabsVideos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/ManGridViewAdapter;

.field final synthetic val$video:Lcom/youku/vo/TabsVideos;


# direct methods
.method constructor <init>(Lcom/youku/adapter/ManGridViewAdapter;Lcom/youku/vo/TabsVideos;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->this$0:Lcom/youku/adapter/ManGridViewAdapter;

    iput-object p2, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->val$video:Lcom/youku/vo/TabsVideos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->this$0:Lcom/youku/adapter/ManGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/ManGridViewAdapter;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->val$video:Lcom/youku/vo/TabsVideos;

    iget-object v1, v1, Lcom/youku/vo/TabsVideos;->source:Lcom/youku/vo/TabsVideoSource;

    iget-object v2, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->val$video:Lcom/youku/vo/TabsVideos;

    iget-object v2, v2, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/ManGridViewAdapter$2;->val$video:Lcom/youku/vo/TabsVideos;

    iget-object v3, v3, Lcom/youku/vo/TabsVideos;->iid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/TabsVideoSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method
