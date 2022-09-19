.class Lcom/youku/adapter/ASideManGridViewAdapter$1;
.super Ljava/lang/Object;
.source "ASideManGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/ASideManGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/ASideManGridViewAdapter;I)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    iput p2, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    iget-object v1, v0, Lcom/youku/adapter/ASideManGridViewAdapter;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->val$p:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v2, v0, Lcom/youku/vo/TabsVideos;->source:Lcom/youku/vo/TabsVideoSource;

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->val$p:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v3, v0, Lcom/youku/vo/TabsVideos;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->this$0:Lcom/youku/adapter/ASideManGridViewAdapter;

    iget-object v0, v0, Lcom/youku/adapter/ASideManGridViewAdapter;->videos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/youku/adapter/ASideManGridViewAdapter$1;->val$p:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TabsVideos;

    iget-object v0, v0, Lcom/youku/vo/TabsVideos;->iid:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/TabsVideoSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
