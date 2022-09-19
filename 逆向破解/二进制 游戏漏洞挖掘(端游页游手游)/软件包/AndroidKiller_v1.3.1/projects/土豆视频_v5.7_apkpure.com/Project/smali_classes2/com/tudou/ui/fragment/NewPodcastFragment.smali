.class public Lcom/tudou/ui/fragment/NewPodcastFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "NewPodcastFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final FAIL:I = 0xfa1

.field private static final GET_ISSUB:I = 0xfa6

.field private static final GET_PLAYLIST_FAIL:I = 0xfa5

.field private static final GET_PLAYLIST_SUCESS:I = 0xfa4

.field private static final GET_USERINFO_FAIL:I = 0xfa3

.field private static final GET_USERINFO_SUCESS:I = 0xfa2

.field private static final PAGESIZE:I = 0x1e

.field public static final RESULTCODE:I = 0x1f4

.field private static final SUCESS:I = 0xfa0

.field public static mRefreshKey:Z = false

.field public static final resultCode:I = 0x2710


# instance fields
.field TAG:Ljava/lang/String;

.field aboutMyself:Ljava/lang/String;

.field private adapter:Lcom/tudou/adapter/PodcastAdapter;

.field atten_layout:Landroid/view/View;

.field brief_layout_line:Landroid/view/View;

.field brief_layout_tab:Landroid/view/View;

.field private byclick:Landroid/widget/TextView;

.field private bytime:Landroid/widget/TextView;

.field from:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field headerView:Landroid/view/View;

.field homeQrcode:Ljava/lang/String;

.field homeUrl:Ljava/lang/String;

.field home_pic:Ljava/lang/String;

.field home_pic_img:Landroid/widget/ImageView;

.field private isGetUserInfoSuccess:Z

.field isVuser:Z

.field public is_sub:I

.field isatt:Z

.field public isfesh:Z

.field public isfeshing:Z

.field private isgetPlayListData:Z

.field public isneedfesh:Z

.field lastItem:Ljava/lang/String;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mLastVisibility:I

.field private mStatus:I

.field private mView:Landroid/view/View;

.field nickname:Ljava/lang/String;

.field onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;

.field public playlistPageNo:I

.field public playlists:Lcom/youku/vo/Playlists;

.field private playliststate:I

.field plist_layout_line:Landroid/view/View;

.field plist_layout_tab:Landroid/view/View;

.field podcastHeader:Landroid/view/View;

.field share:Landroid/view/View;

.field sticky_wrapper:Landroid/view/View;

.field subedNum:Ljava/lang/String;

.field subedProgressBar:Landroid/view/View;

.field top_brief:Landroid/widget/TextView;

.field totle_plist:Landroid/widget/TextView;

.field totle_video:Landroid/widget/TextView;

.field tv_brief:Landroid/widget/TextView;

.field tv_plist:Landroid/widget/TextView;

.field tv_video:Landroid/widget/TextView;

.field ucenter_header_wrapper:Landroid/view/View;

.field uploadCount:Ljava/lang/String;

.field user_Vimg:Landroid/view/View;

.field user_atten:Landroid/widget/ImageView;

.field user_from:Landroid/widget/ImageView;

.field user_img:Landroid/widget/ImageView;

.field user_line1:Landroid/widget/TextView;

.field user_name:Landroid/widget/TextView;

.field user_self:Landroid/widget/TextView;

.field userid:Ljava/lang/String;

.field username:Ljava/lang/String;

.field userpic:Ljava/lang/String;

.field userpicurl:Ljava/lang/String;

.field public video:Lcom/youku/vo/UploadVideoinfo;

.field video_layout:Landroid/view/View;

.field video_layout_line:Landroid/view/View;

.field video_layout_tab:Landroid/view/View;

.field video_listview:Landroid/widget/ListView;

.field private videostate:I

.field viewCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 89
    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mLastVisibility:I

    .line 92
    new-instance v0, Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {v0}, Lcom/youku/vo/UploadVideoinfo;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    .line 93
    new-instance v0, Lcom/youku/vo/Playlists;

    invoke-direct {v0}, Lcom/youku/vo/Playlists;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlistPageNo:I

    .line 110
    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    .line 116
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    .line 159
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isneedfesh:Z

    .line 163
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    .line 165
    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    .line 166
    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    .line 167
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isGetUserInfoSuccess:Z

    .line 817
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isgetPlayListData:Z

    .line 963
    new-instance v0, Lcom/tudou/ui/fragment/NewPodcastFragment$11;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$11;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->handler:Landroid/os/Handler;

    .line 1401
    new-instance v0, Lcom/tudou/ui/fragment/NewPodcastFragment$14;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$14;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->retrygetData()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    return p1
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    return p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/NewPodcastFragment;Lcom/youku/vo/UploadVideoinfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Lcom/youku/vo/UploadVideoinfo;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->addUploadVideo(Lcom/youku/vo/UploadVideoinfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodata()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodata(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isGetUserInfoSuccess:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->onUserinfoGeted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/NewPodcastFragment;Lcom/youku/vo/Playlists;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Lcom/youku/vo/Playlists;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->addplaylistVideo(Lcom/youku/vo/Playlists;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Landroid/widget/ListView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->onScrollChanged(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/adapter/PodcastAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/NewPodcastFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mLastVisibility:I

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mLastVisibility:I

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/NewPodcastFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/NewPodcastFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isgetPlayListData:Z

    return p1
.end method

.method private addUploadVideo(Lcom/youku/vo/UploadVideoinfo;)V
    .locals 3
    .param p1, "uploadvideo"    # Lcom/youku/vo/UploadVideoinfo;

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, p1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    iput-object v1, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    .line 937
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 944
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 945
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    .line 950
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v2}, Lcom/youku/vo/Page;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 952
    return-void

    .line 947
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    goto :goto_0
.end method

.method private addplaylistVideo(Lcom/youku/vo/Playlists;)V
    .locals 3
    .param p1, "tmpplaylists"    # Lcom/youku/vo/Playlists;

    .prologue
    const/4 v2, -0x1

    .line 904
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    .line 906
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v1, v1, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    .line 914
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    if-ne v0, v2, :cond_1

    .line 915
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v1, p1, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v1, v1, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    iput v1, v0, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    if-ne v0, v2, :cond_3

    .line 918
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 933
    return-void

    .line 912
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    goto :goto_0

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v2, v2, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v2, v2, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    invoke-static {v2}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private inflateHeaderView(Landroid/widget/ListView;)V
    .locals 6
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 531
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0302f7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 533
    .local v0, "mHeaderView":Landroid/view/View;
    const v3, 0x7f0c0b05

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 535
    .local v1, "mPlaceholderView":Landroid/view/View;
    const v3, 0x7f0c0b04

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 537
    .local v2, "topTransparent":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 538
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/tudou/ui/fragment/NewPodcastFragment$5;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/tudou/ui/fragment/NewPodcastFragment$5;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/view/View;Landroid/view/View;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 565
    new-instance v3, Lcom/tudou/ui/fragment/NewPodcastFragment$6;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment$6;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 617
    return-void
.end method

.method private initData()V
    .locals 7

    .prologue
    .line 495
    new-instance v0, Lcom/tudou/adapter/PodcastAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/PodcastAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/youku/vo/UploadVideoinfo;Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/youku/vo/Playlists;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    .line 497
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030247

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    .line 499
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    const v1, 0x7f0c0590

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->bytime:Landroid/widget/TextView;

    .line 500
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    const v1, 0x7f0c0591

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->byclick:Landroid/widget/TextView;

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->bytime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->byclick:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPodcastList(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPlayList()V

    .line 513
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0595

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    .line 621
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0596

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    .line 622
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c059b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    .line 624
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0594

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout:Landroid/view/View;

    .line 625
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 627
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c059e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_tab:Landroid/view/View;

    .line 628
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_tab:Landroid/view/View;

    .line 629
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_tab:Landroid/view/View;

    .line 631
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_tab:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_tab:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_tab:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0589

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_self:Landroid/widget/TextView;

    .line 637
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c058c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    .line 638
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0588

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_line1:Landroid/widget/TextView;

    .line 639
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c052e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_name:Landroid/widget/TextView;

    .line 640
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0586

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_Vimg:Landroid/view/View;

    .line 641
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0585

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_img:Landroid/widget/ImageView;

    .line 642
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0599

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    .line 645
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c058b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->atten_layout:Landroid/view/View;

    .line 646
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c058d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    .line 648
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_line:Landroid/view/View;

    .line 649
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_line:Landroid/view/View;

    .line 650
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_line:Landroid/view/View;

    .line 652
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c059f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->top_brief:Landroid/widget/TextView;

    .line 655
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_brief:Landroid/widget/TextView;

    .line 657
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    .line 658
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_video:Landroid/widget/TextView;

    .line 660
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    .line 661
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c05a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_plist:Landroid/widget/TextView;

    .line 663
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c059c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->share:Landroid/view/View;

    .line 664
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->share:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->share:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 668
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0598

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0597

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->home_pic_img:Landroid/widget/ImageView;

    .line 672
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const-string v1, "M351"

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 676
    .local v0, "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a051d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 678
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    .end local v0    # "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/NewPodcastFragment$7;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$7;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    return-void
.end method

.method private onAttenclick()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1126
    const-string v1, "user_atten"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1130
    const v1, 0x7f0d00a7

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1133
    :cond_2
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isneedfesh:Z

    .line 1134
    sput-boolean v2, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 1135
    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1136
    iget v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1139
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    if-eqz v1, :cond_3

    .line 1140
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1141
    .local v10, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u53d6\u6d88\u8ba2\u9605"

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string v1, "t1.channel_personal.subscribe"

    invoke-static {v1, v10}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1143
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 1144
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    new-instance v3, Lcom/tudou/ui/fragment/NewPodcastFragment$12;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$12;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_0

    .line 1172
    .end local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    .end local v10    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1173
    .restart local v10    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "\u8ba2\u9605"

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-string v1, "t1.channel_personal.subscribe"

    invoke-static {v1, v10}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1186
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 1187
    .restart local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpicurl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->uploadCount:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->nickname:Ljava/lang/String;

    iget-object v8, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/UploadVideoinfo$Info;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    :goto_1
    new-instance v9, Lcom/tudou/ui/fragment/NewPodcastFragment$13;

    invoke-direct {v9, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$13;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-interface/range {v0 .. v9}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    goto/16 :goto_0

    :cond_4
    const-string v8, ""

    goto :goto_1
.end method

.method private declared-synchronized onScrollChanged(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "mPlaceholderView"    # Landroid/view/View;
    .param p3, "topTransparent"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 693
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 723
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 696
    :cond_1
    :try_start_1
    const-string v3, "M351"

    sget-object v4, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E120L"

    sget-object v4, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 700
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 701
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_2

    .line 702
    .local v1, "top":I
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 703
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 704
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_3

    .line 708
    const-string v3, "test1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sticky_wrapper height 1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->removeY(Landroid/view/View;I)V

    .line 714
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->removeY(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 693
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 701
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1

    .line 718
    .restart local v0    # "rect":Landroid/graphics/Rect;
    .restart local v1    # "top":I
    :cond_3
    const-string v3, "test1"

    const-string v4, "sticky_wrapper height 2= 0"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    iget-object v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->removeY(Landroid/view/View;I)V

    .line 720
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->removeY(Landroid/view/View;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private onUserinfoGeted()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    const-string v1, "\u8fd9\u4e2a\u5bb6\u4f19\u5f88\u61d2\uff0c\u4ec0\u4e48\u90fd\u6ca1\u7559\u4e0b..."

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/PodcastAdapter;->setSelf(Ljava/lang/String;)V

    .line 961
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/PodcastAdapter;->setSelf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrygetData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 478
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v4}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 479
    const-string v0, "onScroll"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    new-instance v1, Lcom/youku/vo/Page;

    invoke-direct {v1}, Lcom/youku/vo/Page;-><init>()V

    iput-object v1, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    .line 483
    invoke-virtual {p0, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPodcastList(Z)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v4}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 485
    iput v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlistPageNo:I

    .line 486
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 487
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPlayList()V

    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v4}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 490
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetUserInfo(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "hintType"    # Lcom/youku/widget/HintView$Type;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1379
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1382
    .local v0, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a051d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1388
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, v0}, Lcom/youku/widget/HintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    .end local v0    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    if-nez p1, :cond_2

    .line 1392
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1394
    .restart local v0    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1395
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, v0}, Lcom/youku/widget/HintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    .end local v0    # "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p2, p3}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method private setViewWithUserId0()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1411
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->share:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_line1:Landroid/widget/TextView;

    const-string v1, "\u64ad\u653e  0 |  \u8ba2\u9605  0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 1433
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1467
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpic:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_img:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 1468
    return-void

    .line 1418
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1425
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    const v1, 0x7f02026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1429
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_from:Landroid/widget/ImageView;

    const v1, 0x7f020269

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showTab(IZ)V

    .line 233
    return-void
.end method

.method private showTab(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "isfist"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x4

    const v5, -0x8b00

    const v4, -0xc3c3c4

    const/4 v3, 0x0

    .line 236
    if-nez p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v3}, Lcom/tudou/adapter/PodcastAdapter;->changeMode(I)V

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_line:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->top_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_video:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_plist:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->onUserinfoGeted()V

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->notifyDataSetChanged()V

    .line 323
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodataByTabclick()V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/PodcastAdapter;->changeMode(I)V

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_line:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_video:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->top_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_plist:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x1

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u6700\u65b0\u89c6\u9891"

    invoke-direct {p0, v0, v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, 0x1

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u6700\u70ed\u89c6\u9891"

    invoke-direct {p0, v0, v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_3
    if-nez p2, :cond_4

    .line 290
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodataByTabclick()V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 294
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 295
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/PodcastAdapter;->changeMode(I)V

    .line 296
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const/4 v0, 0x2

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u680f\u76ee\u89c6\u9891"

    invoke-direct {p0, v0, v1, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 304
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->brief_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout_line:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->plist_layout_line:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_plist:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_plist:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->top_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_brief:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->totle_video:Landroid/widget/TextView;

    const v1, -0x7d7d7e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->tv_video:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 302
    :cond_6
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodataByTabclick()V

    goto :goto_2

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 320
    const-string v0, "test1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new poscast activity show tab error index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateTabNodata()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodata(Z)V

    .line 327
    return-void
.end method

.method private updateTabNodata(Z)V
    .locals 6
    .param p1, "isfail"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 421
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    if-nez v0, :cond_6

    .line 423
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 425
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v5}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u6700\u65b0\u89c6\u9891"

    invoke-direct {p0, v2, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    if-eqz p1, :cond_9

    .line 444
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v0, v0, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget v0, v0, Lcom/youku/vo/Playlists$PlaylistData;->totalPlaylistCount:I

    if-lez v0, :cond_8

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    :cond_3
    :goto_1
    return-void

    .line 429
    :cond_4
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u6700\u70ed\u89c6\u9891"

    invoke-direct {p0, v2, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isgetPlayListData:Z

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 436
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u680f\u76ee\u89c6\u9891"

    invoke-direct {p0, v3, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v5}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-direct {p0, v0, v1, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$4;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 470
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private updateTabNodataByTabclick()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 330
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 339
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    if-ne v0, v2, :cond_2

    .line 340
    sget-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-direct {p0, v2, v0, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$1;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_2
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->videostate:I

    if-ne v0, v5, :cond_3

    .line 358
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u6700\u65b0\u89c6\u9891"

    invoke-direct {p0, v2, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 366
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 362
    :cond_4
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u6700\u70ed\u89c6\u9891"

    invoke-direct {p0, v2, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isgetPlayListData:Z

    if-nez v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/PodcastAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 374
    :goto_2
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    if-ne v0, v2, :cond_7

    .line 375
    sget-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-direct {p0, v4, v0, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$2;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 372
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_2

    .line 392
    :cond_7
    iget v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playliststate:I

    if-ne v0, v5, :cond_8

    .line 393
    sget-object v0, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v1, "\u6682\u65e0\u680f\u76ee\u89c6\u9891"

    invoke-direct {p0, v4, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 395
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 397
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v0, v2}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isGetUserInfoSuccess:Z

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 399
    sget-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-direct {p0, v1, v0, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$3;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public excueGetPlayList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 820
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isgetPlayListData:Z

    .line 821
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 823
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlistPageNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/http/TudouURLContainer;->getUserPlaylists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 826
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/NewPodcastFragment$9;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$9;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 857
    return-void
.end method

.method public excueGetPodcastList(Z)V
    .locals 6
    .param p1, "isshowLoading"    # Z

    .prologue
    const/4 v5, 0x1

    .line 860
    if-eqz p1, :cond_0

    .line 861
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 862
    :cond_0
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    .line 863
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 865
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 866
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v3, v3, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v3, v3, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    iget-object v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v4}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/youku/http/TudouURLContainer;->getUserUploadedUrl_V4(Ljava/lang/String;Lcom/youku/vo/Page;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 869
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/NewPodcastFragment$10;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$10;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 901
    return-void
.end method

.method public excueGetUserInfo(Ljava/lang/String;I)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 755
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 758
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 760
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/NewPodcastFragment$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/tudou/ui/fragment/NewPodcastFragment$8;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Ljava/lang/String;I)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 815
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1112
    const-string v1, "detail"

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isneedfesh"

    iget-boolean v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isneedfesh:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1115
    const-string v1, "uid"

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v1, "isatt"

    iget-boolean v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1117
    const-string v1, "TAG"

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v0}, Lcom/tudou/ui/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 1121
    return-void
.end method

.method public getIntentData()Z
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 204
    const-string v2, "userid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    .line 205
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->username:Ljava/lang/String;

    .line 206
    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->from:Ljava/lang/String;

    .line 207
    const-string v2, "userpic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpic:Ljava/lang/String;

    .line 208
    const-string v2, "TAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->TAG:Ljava/lang/String;

    .line 209
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mStatus:I

    .line 210
    const/4 v2, 0x1

    .line 213
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNewVideoData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1329
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 1331
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v0, v0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    new-instance v1, Lcom/youku/vo/Page;

    invoke-direct {v1}, Lcom/youku/vo/Page;-><init>()V

    iput-object v1, v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    .line 1332
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfesh:Z

    .line 1333
    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPodcastList(Z)V

    .line 1334
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 517
    invoke-super {p0, p1, p2, p3}, Lcom/youku/ui/YoukuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 519
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 521
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetUserInfo(Ljava/lang/String;I)V

    .line 523
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 525
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetUserInfo(Ljava/lang/String;I)V

    .line 528
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1233
    :sswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showTab(I)V

    .line 1234
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1235
    .local v18, "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u7b80\u4ecb"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    const-string v2, "t1.channel_personal.navigate"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1239
    .end local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showTab(I)V

    .line 1240
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1241
    .restart local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u9891\u9053\u6570\u91cf"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string v2, "t1.channel_personal.navigate"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1245
    .end local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_2
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showTab(I)V

    .line 1246
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1247
    .restart local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u8c46\u5355"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string v2, "t1.channel_personal.navigate"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1251
    .end local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->onAttenclick()V

    goto :goto_0

    .line 1254
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    if-nez v2, :cond_0

    .line 1260
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1261
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1265
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/PodcastAdapter;->setByClick(Z)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1270
    const/4 v2, 0x1

    sget-object v3, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v4, "\u6682\u65e0\u6700\u70ed\u89c6\u9891"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1274
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getNewVideoData()V

    goto/16 :goto_0

    .line 1278
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/PodcastAdapter;->getisClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    if-nez v2, :cond_0

    .line 1284
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1285
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 1288
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/PodcastAdapter;->setByClick(Z)V

    .line 1289
    const-string v2, "\u81ea\u9891\u9053\u9875\u6700\u65b0\u89c6\u9891tab\u70b9\u51fb"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u81ea\u9891\u9053\u9875\u6700\u65b0\u89c6\u9891tab"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1293
    const/4 v2, 0x1

    sget-object v3, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v4, "\u6682\u65e0\u6700\u65b0\u89c6\u9891"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setHintViewParas(ILcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1297
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getNewVideoData()V

    goto/16 :goto_0

    .line 1301
    :sswitch_6
    const-string v2, "share_layout"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->homeUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1306
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1307
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 1309
    :cond_5
    const v2, 0x7f0d03d4

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 1313
    :cond_6
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1314
    .restart local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "\u5206\u4eab"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    const-string v2, "t1.channel_personal.navigate"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->nickname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->homeUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->homeQrcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpicurl:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1321
    .end local v18    # "type":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->finish()V

    goto/16 :goto_0

    .line 1231
    :sswitch_data_0
    .sparse-switch
        0x7f0c058c -> :sswitch_3
        0x7f0c0590 -> :sswitch_5
        0x7f0c0591 -> :sswitch_4
        0x7f0c0598 -> :sswitch_7
        0x7f0c059c -> :sswitch_6
        0x7f0c059e -> :sswitch_0
        0x7f0c05a2 -> :sswitch_1
        0x7f0c05a6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 173
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 177
    const v1, 0x7f030131

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getIntentData()Z

    .line 179
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->initView()V

    .line 180
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    check-cast v1, Lcom/tudou/ui/activity/NewPodcastActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;

    iput-object v2, v1, Lcom/tudou/ui/activity/NewPodcastActivity;->onBackListener:Lcom/tudou/ui/activity/NewPodcastActivity$OnBackListener;

    .line 181
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video_listview:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->inflateHeaderView(Landroid/widget/ListView;)V

    .line 182
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->setViewWithUserId0()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->initData()V

    .line 186
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1}, Lcom/youku/widget/HintView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    .local v0, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a051d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 193
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, v0}, Lcom/youku/widget/HintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-direct {p0, v4, v4}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showTab(IZ)V

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1347
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v2, p3}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1348
    if-ge p3, v4, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v2, v2, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UploadVideoinfo$Info;

    .line 1353
    .local v1, "info":Lcom/youku/vo/UploadVideoinfo$Info;
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->from:Ljava/lang/String;

    const-string v3, "detail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1355
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "video_id"

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3, v0}, Lcom/tudou/ui/activity/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1357
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->finish()V

    goto :goto_0

    .line 1359
    .end local v0    # "data":Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.channel_personal.videoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1360
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, v1, Lcom/youku/vo/UploadVideoinfo$Info;->itemCode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v1, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 1363
    .end local v1    # "info":Lcom/youku/vo/UploadVideoinfo$Info;
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->adapter:Lcom/tudou/adapter/PodcastAdapter;

    invoke-virtual {v2, p3}, Lcom/tudou/adapter/PodcastAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1364
    if-lt p3, v3, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->playlists:Lcom/youku/vo/Playlists;

    iget-object v2, v2, Lcom/youku/vo/Playlists;->data:Lcom/youku/vo/Playlists$PlaylistData;

    iget-object v2, v2, Lcom/youku/vo/Playlists$PlaylistData;->list:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;

    .line 1369
    .local v1, "info":Lcom/youku/vo/Playlists$PlaylistData$ListData;
    iget-object v2, v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;->firstItem:Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;

    if-eqz v2, :cond_0

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.channel_personal.columnvideo.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;->firstItem:Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;

    iget-object v3, v3, Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;->icode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1371
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;->firstItem:Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;

    iget-object v3, v3, Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;->icode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;->firstItem:Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;

    iget-object v5, v5, Lcom/youku/vo/Playlists$PlaylistData$ListData$FirstItem;->title:Ljava/lang/String;

    iget-object v6, v1, Lcom/youku/vo/Playlists$PlaylistData$ListData;->lcode:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userid:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetUserInfo(Ljava/lang/String;I)V

    .line 229
    :cond_0
    return-void
.end method

.method public removeY(Landroid/view/View;I)V
    .locals 3
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "translationY"    # I

    .prologue
    .line 726
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 727
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 732
    :goto_0
    return-void

    .line 729
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "datastring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v2, "subFlag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 738
    .local v1, "subflag":I
    if-eqz v0, :cond_0

    .line 739
    const-string v2, "nick"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->nickname:Ljava/lang/String;

    .line 740
    const-string v2, "pic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->userpicurl:Ljava/lang/String;

    .line 741
    const-string v2, "video_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->uploadCount:Ljava/lang/String;

    .line 742
    const-string v2, "isVuser"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isVuser:Z

    .line 743
    const-string v2, "about_myself"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    .line 744
    iget-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->aboutMyself:Ljava/lang/String;

    .line 745
    const-string v2, "view_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->viewCount:Ljava/lang/String;

    .line 746
    const-string v2, "subed_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedNum:Ljava/lang/String;

    .line 747
    const-string v2, "is_sub"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->is_sub:I

    .line 748
    const-string v2, "homeUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->homeUrl:Ljava/lang/String;

    .line 749
    const-string v2, "home_pic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->home_pic:Ljava/lang/String;

    .line 750
    const-string v2, "homeQrcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment;->homeQrcode:Ljava/lang/String;

    .line 752
    :cond_0
    return-void
.end method

.method public showAttentionErrorToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1341
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method public showCacelErrorToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1337
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1338
    return-void
.end method
