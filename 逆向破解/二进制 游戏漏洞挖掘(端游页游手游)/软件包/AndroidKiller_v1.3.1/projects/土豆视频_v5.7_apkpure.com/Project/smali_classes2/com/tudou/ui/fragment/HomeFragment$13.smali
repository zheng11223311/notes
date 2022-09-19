.class Lcom/tudou/ui/fragment/HomeFragment$13;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->setSearchTxt(Landroid/widget/TextView;Lcom/youku/vo/SearchArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$aSearchArea:Lcom/youku/vo/SearchArea;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/SearchArea;)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$13;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$13;->val$aSearchArea:Lcom/youku/vo/SearchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1645
    new-instance v0, Lcom/youku/vo/SkipInfo;

    invoke-direct {v0}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 1646
    .local v0, "info":Lcom/youku/vo/SkipInfo;
    const-string v1, "the_search"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 1647
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$13;->val$aSearchArea:Lcom/youku/vo/SearchArea;

    iget-object v1, v1, Lcom/youku/vo/SearchArea;->search_word:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->search_word:Ljava/lang/String;

    .line 1648
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$13;->val$aSearchArea:Lcom/youku/vo/SearchArea;

    iget-object v1, v1, Lcom/youku/vo/SearchArea;->search_adv:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->search_adv:Ljava/lang/String;

    .line 1649
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$13;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HomeFragment;->access$2000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1650
    return-void
.end method
