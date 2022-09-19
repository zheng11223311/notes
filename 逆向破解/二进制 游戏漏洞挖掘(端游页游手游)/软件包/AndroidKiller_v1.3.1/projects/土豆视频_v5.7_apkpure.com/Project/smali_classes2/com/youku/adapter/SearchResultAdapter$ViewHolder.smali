.class Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/adapter/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private activitySearchdirectManItem:Landroid/view/View;

.field private activity_searchdirect_item:Landroid/view/View;

.field private bottom_episode_btn1:Landroid/widget/Button;

.field private bottom_episode_btn2:Landroid/widget/Button;

.field private bottom_episode_btn3:Landroid/widget/Button;

.field private bottom_episode_btn4:Landroid/widget/Button;

.field private bottom_episode_more_btn:Landroid/widget/Button;

.field private bottom_movie_play:Landroid/widget/RelativeLayout;

.field private bottom_movie_text:Landroid/widget/TextView;

.field private bottom_show_more_btn:Landroid/widget/Button;

.field private bottom_show_txt:Landroid/widget/Button;

.field private btnSearchPlay:Landroid/widget/Button;

.field private btnSearchSubscribe:Landroid/widget/ImageView;

.field private gridViewAdapter:Lcom/youku/adapter/BSideGridViewAdapter;

.field private imageView:Landroid/widget/ImageView;

.field private img_searchdirect_more_item_back:Landroid/widget/ImageView;

.field private img_searchdirect_site:Landroid/widget/ImageView;

.field private layout_bottom_episode:Landroid/widget/LinearLayout;

.field private layout_bottom_show:Landroid/widget/LinearLayout;

.field private layout_searchdirect_more_item_bottomcontainer:Landroid/widget/LinearLayout;

.field private listViewAdapter:Lcom/youku/adapter/BSideListViewAdapter;

.field private ll_searchdirect_from:Landroid/widget/LinearLayout;

.field private manGridViewAdapter:Lcom/youku/adapter/ManGridViewAdapter;

.field private searchCommonFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

.field private searchManDetail:Landroid/widget/RelativeLayout;

.field private searchManDetail1:Landroid/widget/TextView;

.field private searchManDetail2:Landroid/widget/TextView;

.field private searchManDetail3:Landroid/widget/TextView;

.field private searchManDetail4:Landroid/widget/TextView;

.field private searchManFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

.field private searchManGridView:Landroid/widget/LinearLayout;

.field private searchManImg:Landroid/widget/ImageView;

.field private searchManName:Landroid/widget/TextView;

.field private search_direct_aside_top:Landroid/view/View;

.field private searchdirect_item_viewswitcher:Landroid/widget/ViewSwitcher;

.field private searchdirect_more_item_gridview:Landroid/widget/GridView;

.field private searchdirect_more_item_listview:Landroid/widget/ListView;

.field private showL:Landroid/widget/LinearLayout;

.field private subedSearchProBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field private txt_searchdirect_fifth:Landroid/widget/TextView;

.field private txt_searchdirect_first_title:Landroid/widget/TextView;

.field private txt_searchdirect_forth:Landroid/widget/TextView;

.field private txt_searchdirect_more_item_title:Landroid/widget/TextView;

.field private txt_searchdirect_score:Landroid/widget/LinearLayout;

.field private txt_searchdirect_score1:Landroid/widget/TextView;

.field private txt_searchdirect_score2:Landroid/widget/TextView;

.field private txt_searchdirect_scoreTxt:Landroid/widget/TextView;

.field private txt_searchdirect_second:Landroid/widget/TextView;

.field private txt_searchdirect_six:Landroid/widget/TextView;

.field private txt_searchdirect_stripe_bottom:Landroid/widget/TextView;

.field private txt_searchdirect_third:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_bottom_episode:Landroid/widget/LinearLayout;

    .line 729
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn1:Landroid/widget/Button;

    .line 730
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn2:Landroid/widget/Button;

    .line 731
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn3:Landroid/widget/Button;

    .line 732
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn4:Landroid/widget/Button;

    .line 733
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_more_btn:Landroid/widget/Button;

    .line 736
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_bottom_show:Landroid/widget/LinearLayout;

    .line 737
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_txt:Landroid/widget/Button;

    .line 738
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_more_btn:Landroid/widget/Button;

    .line 741
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_play:Landroid/widget/RelativeLayout;

    .line 742
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_text:Landroid/widget/TextView;

    .line 744
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_more_item_title:Landroid/widget/TextView;

    .line 745
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->img_searchdirect_more_item_back:Landroid/widget/ImageView;

    .line 747
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_searchdirect_more_item_bottomcontainer:Landroid/widget/LinearLayout;

    .line 749
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_gridview:Landroid/widget/GridView;

    .line 750
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_listview:Landroid/widget/ListView;

    .line 752
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->gridViewAdapter:Lcom/youku/adapter/BSideGridViewAdapter;

    .line 753
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->listViewAdapter:Lcom/youku/adapter/BSideListViewAdapter;

    .line 764
    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->manGridViewAdapter:Lcom/youku/adapter/ManGridViewAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_item_viewswitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ViewSwitcher;)Landroid/widget/ViewSwitcher;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ViewSwitcher;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_item_viewswitcher:Landroid/widget/ViewSwitcher;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->showL:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->showL:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->activity_searchdirect_item:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->activity_searchdirect_item:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->search_direct_aside_top:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->btnSearchPlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->btnSearchPlay:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->btnSearchSubscribe:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->btnSearchSubscribe:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->subedSearchProBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->subedSearchProBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_first_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_first_title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_second:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_second:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_third:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_third:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_forth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_forth:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_fifth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_fifth:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_six:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_six:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->img_searchdirect_site:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->img_searchdirect_site:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->ll_searchdirect_from:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->ll_searchdirect_from:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_score2:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_scoreTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_scoreTxt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_stripe_bottom:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_stripe_bottom:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_more_item_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->txt_searchdirect_more_item_title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->img_searchdirect_more_item_back:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->img_searchdirect_more_item_back:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchCommonFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchCommonFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_searchdirect_more_item_bottomcontainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_searchdirect_more_item_bottomcontainer:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->activitySearchdirectManItem:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->activitySearchdirectManItem:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail2:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail3:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail4:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManFilter:Lcom/youku/widget/SearchFilterHorizontalSlide;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManGridView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManGridView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchManDetail:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/ManGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->manGridViewAdapter:Lcom/youku/adapter/ManGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/ManGridViewAdapter;)Lcom/youku/adapter/ManGridViewAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/adapter/ManGridViewAdapter;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->manGridViewAdapter:Lcom/youku/adapter/ManGridViewAdapter;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_bottom_episode:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->layout_bottom_episode:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn1:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn2:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn3:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_btn4:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_more_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_episode_more_btn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_txt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_txt:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_more_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_show_more_btn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_play:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_play:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->bottom_movie_text:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->gridViewAdapter:Lcom/youku/adapter/BSideGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/BSideGridViewAdapter;)Lcom/youku/adapter/BSideGridViewAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/adapter/BSideGridViewAdapter;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->gridViewAdapter:Lcom/youku/adapter/BSideGridViewAdapter;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->listViewAdapter:Lcom/youku/adapter/BSideListViewAdapter;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/BSideListViewAdapter;)Lcom/youku/adapter/BSideListViewAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/youku/adapter/BSideListViewAdapter;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->listViewAdapter:Lcom/youku/adapter/BSideListViewAdapter;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/GridView;)Landroid/widget/GridView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/GridView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_gridview:Landroid/widget/GridView;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->searchdirect_more_item_listview:Landroid/widget/ListView;

    return-object p1
.end method
