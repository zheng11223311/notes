.class public Lcom/youku/adapter/SearchResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;,
        Lcom/youku/adapter/SearchResultAdapter$ViewHolder;,
        Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;,
        Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    }
.end annotation


# static fields
.field public static final CATE_ID_ALBUM:I = 0xb

.field public static final CATE_ID_ARTS:I = 0x3

.field public static final CATE_ID_AWARDS:I = 0xf

.field public static final CATE_ID_BIG_WORD:I = 0x13

.field public static final CATE_ID_CARTOON:I = 0x5

.field public static final CATE_ID_DIV:I = 0xc

.field public static final CATE_ID_EDU:I = 0x8

.field public static final CATE_ID_EPG:I = 0xd

.field public static final CATE_ID_IMP:I = 0xe

.field public static final CATE_ID_INFO:I = 0x11

.field public static final CATE_ID_LIST:I = 0xa

.field public static final CATE_ID_MAN:I = 0x6

.field public static final CATE_ID_MOVIE:I = 0x2

.field public static final CATE_ID_MOVIE_SET:I = 0x10

.field public static final CATE_ID_RECORD:I = 0x9

.field public static final CATE_ID_TV:I = 0x1


# instance fields
.field private final DIRECT_EMPTY_UGC:I

.field private final DIRECT_UGC_DATA:I

.field private final DIRECT_UGC_EMPTY:I

.field private final TYPE_0:I

.field private final TYPE_1:I

.field private final TYPE_2:I

.field private final TYPE_3:I

.field private final TYPE_4:I

.field private final TYPE_5:I

.field private final TYPE_6:I

.field private final TYPE_7:I

.field private final UGC_EMPTY_DIRECT:I

.field public btnMoreDirect:Z

.field public curDirectPos:I

.field public currentPage:I

.field private filtering:Z

.field private handler:Landroid/os/Handler;

.field private mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private page:I

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation
.end field

.field resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

.field sManager:Lcom/tudou/ui/fragment/SearchManager;

.field private showFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slines:I

.field private state:I

.field private ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

.field private ugcItems1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;"
        }
    .end annotation
.end field

.field private ugcLastLineCount:I

.field private ugcLines:I


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/SearchTudouFragment;Lcom/tudou/ui/fragment/SearchResultUGCHeader;Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p2, "ugcHeader"    # Lcom/tudou/ui/fragment/SearchResultUGCHeader;
    .param p3, "resultFragment"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    iput v1, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_0:I

    .line 78
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_1:I

    .line 80
    iput v3, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_2:I

    .line 81
    iput v4, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_3:I

    .line 83
    iput v5, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_4:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_5:I

    .line 87
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_6:I

    .line 89
    const/4 v0, 0x7

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->TYPE_7:I

    .line 91
    iput-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->btnMoreDirect:Z

    .line 93
    iput v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    .line 99
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->DIRECT_UGC_EMPTY:I

    .line 101
    iput v3, p0, Lcom/youku/adapter/SearchResultAdapter;->DIRECT_EMPTY_UGC:I

    .line 103
    iput v4, p0, Lcom/youku/adapter/SearchResultAdapter;->UGC_EMPTY_DIRECT:I

    .line 105
    iput v5, p0, Lcom/youku/adapter/SearchResultAdapter;->DIRECT_UGC_DATA:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    .line 123
    iput-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->filtering:Z

    .line 1078
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    .line 109
    iput-object p3, p0, Lcom/youku/adapter/SearchResultAdapter;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    .line 110
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    .line 111
    invoke-virtual {p1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/youku/adapter/SearchResultAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/SearchResultAdapter;->trackUgcSDK(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/youku/adapter/SearchResultAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/youku/adapter/SearchResultAdapter;->cancelAttention(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/youku/adapter/SearchResultAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/youku/adapter/SearchResultAdapter;->addAttention(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/SearchResultAdapter;->cancelAttention(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/SearchResultAdapter;->addAttention(ILjava/util/ArrayList;)V

    return-void
.end method

.method private addAttention(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1836
    new-instance v0, Lcom/youku/vo/SokuPodcast;

    invoke-direct {v0}, Lcom/youku/vo/SokuPodcast;-><init>()V

    .line 1837
    .local v0, "cast":Lcom/youku/vo/SokuPodcast;
    new-instance v1, Lcom/youku/vo/SokuPodcast$User;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/youku/vo/SokuPodcast$User;-><init>(Lcom/youku/vo/SokuPodcast;)V

    .line 1838
    .local v1, "user":Lcom/youku/vo/SokuPodcast$User;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->nickname:Ljava/lang/String;

    .line 1839
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/youku/vo/SokuPodcast$User;->userId:I

    .line 1840
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->username:Ljava/lang/String;

    .line 1841
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->small_image_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->userpicurl:Ljava/lang/String;

    .line 1842
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->video_count:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->uploadCount:Ljava/lang/String;

    .line 1843
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-boolean v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isVuser:Z

    iput-boolean v2, v1, Lcom/youku/vo/SokuPodcast$User;->isVuser:Z

    .line 1844
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$24;

    invoke-direct {v3, p0, p1}, Lcom/youku/adapter/SearchResultAdapter$24;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v2, v1, v3}, Lcom/tudou/ui/fragment/SearchManager;->addPodcastAttention(Lcom/youku/vo/SokuPodcast$User;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 1875
    return-void
.end method

.method private addAttention(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1765
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$22;

    invoke-direct {v2, p0, p2, p1}, Lcom/youku/adapter/SearchResultAdapter$22;-><init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v0, v2}, Lcom/tudou/ui/fragment/SearchManager;->addVideoAttention(Lcom/youku/vo/SearchDirectDaoShowItem;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 1799
    return-void
.end method

.method private attentionLogin(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1940
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1941
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1942
    const-string v1, "TAG"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1943
    const/16 v1, 0x7d0

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 1945
    return-void
.end method

.method private cancelAttention(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1878
    new-instance v0, Lcom/youku/vo/SokuPodcast;

    invoke-direct {v0}, Lcom/youku/vo/SokuPodcast;-><init>()V

    .line 1879
    .local v0, "cast":Lcom/youku/vo/SokuPodcast;
    new-instance v1, Lcom/youku/vo/SokuPodcast$User;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/youku/vo/SokuPodcast$User;-><init>(Lcom/youku/vo/SokuPodcast;)V

    .line 1880
    .local v1, "user":Lcom/youku/vo/SokuPodcast$User;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->nickname:Ljava/lang/String;

    .line 1881
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/youku/vo/SokuPodcast$User;->userId:I

    .line 1882
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->username:Ljava/lang/String;

    .line 1883
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->small_image_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->userpicurl:Ljava/lang/String;

    .line 1884
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->video_count:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SokuPodcast$User;->uploadCount:Ljava/lang/String;

    .line 1885
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-boolean v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isVuser:Z

    iput-boolean v2, v1, Lcom/youku/vo/SokuPodcast$User;->isVuser:Z

    .line 1886
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-instance v5, Lcom/youku/adapter/SearchResultAdapter$25;

    invoke-direct {v5, p0, p1}, Lcom/youku/adapter/SearchResultAdapter$25;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->cancelAttention(Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 1913
    return-void
.end method

.method private cancelAttention(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1803
    .local p2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$23;

    invoke-direct {v3, p0, p2, p1}, Lcom/youku/adapter/SearchResultAdapter$23;-><init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tudou/ui/fragment/SearchManager;->cancelAttention(Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 1833
    return-void
.end method

.method private getDataType()I
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const/4 v0, 0x4

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 522
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 523
    :cond_3
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 525
    const/4 v0, 0x3

    goto :goto_0

    .line 526
    :cond_5
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 528
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getViewTyep(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x6

    .line 222
    iget-boolean v5, p0, Lcom/youku/adapter/SearchResultAdapter;->btnMoreDirect:Z

    if-eqz v5, :cond_6

    .line 223
    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    if-ge p1, v5, :cond_3

    .line 224
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    if-ne v0, v1, :cond_1

    .line 225
    const/4 v0, 0x5

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    :cond_2
    move v0, v2

    .line 228
    goto :goto_0

    .line 230
    :cond_3
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    if-ne p1, v1, :cond_4

    .line 231
    const/4 v0, 0x4

    goto :goto_0

    .line 232
    :cond_4
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    add-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_c

    .line 235
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    .line 236
    goto :goto_0

    :cond_5
    move v0, v4

    .line 238
    goto :goto_0

    .line 241
    :cond_6
    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    if-ge p1, v5, :cond_9

    .line 242
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    if-ne v0, v1, :cond_7

    .line 243
    const/4 v0, 0x5

    goto :goto_0

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_8

    move v0, v1

    .line 245
    goto :goto_0

    :cond_8
    move v0, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_9
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    if-ne p1, v1, :cond_a

    .line 249
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/tudou/ui/fragment/SearchResultFragment;->CUR_DATA:I

    sget v2, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_UGC_EMPTY:I

    if-ne v1, v2, :cond_0

    move v0, v3

    .line 251
    goto :goto_0

    .line 255
    :cond_a
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    if-le p1, v0, :cond_c

    .line 256
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v3

    .line 257
    goto :goto_0

    :cond_b
    move v0, v4

    .line 259
    goto :goto_0

    .line 262
    :cond_c
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initARTSLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;II)V
    .locals 7
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "cate_id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1278
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1280
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1282
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1284
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1285
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0302c5

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1288
    .local v0, "layout_bottom_show":Landroid/view/View;
    const v2, 0x7f0c0ca9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1290
    const v2, 0x7f0c0caa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1292
    const/4 v2, 0x3

    if-ne p4, v2, :cond_0

    .line 1293
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowset;->show_stage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    :goto_0
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1303
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    const v3, -0x2f2f30

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1304
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1308
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1309
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 1337
    :goto_1
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "\u66f4\u591a"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$17;

    invoke-direct {v3, p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter$17;-><init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    return-void

    .line 1297
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1316
    :cond_1
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1317
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 1318
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$16;

    invoke-direct {v3, p0, p3}, Lcom/youku/adapter/SearchResultAdapter$16;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private initASideView_SHOW(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 1434
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, p1, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->page:I

    if-nez v6, :cond_b

    .line 1437
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1441
    :goto_1
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v6, :cond_3

    .line 1442
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->vimg:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1444
    :cond_2
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->vimg:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1445
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->vimg:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1449
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v3, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1451
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v4, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->title:Ljava/lang/String;

    .line 1452
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 1455
    :cond_4
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->year:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->year:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1458
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v4    # "title":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->notice:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1461
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->notice:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_7
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->genre:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u7c7b\u578b\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->genre:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_8
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->area:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5730\u533a\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->area:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    :cond_9
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->vv:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->vv:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_a
    const/4 v6, 0x5

    new-array v5, v6, [Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1474
    .local v5, "views":[Landroid/widget/TextView;
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1475
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1480
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1482
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1483
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    .line 1485
    aget-object v6, v5, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    aget-object v7, v5, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1439
    .end local v0    # "i":I
    .end local v3    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "views":[Landroid/widget/TextView;
    :cond_b
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto/16 :goto_1

    .line 1488
    .restart local v0    # "i":I
    .restart local v3    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "views":[Landroid/widget/TextView;
    :cond_c
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v6, :cond_d

    .line 1489
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->is_tudou:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    .line 1490
    invoke-direct {p0, p1, p2}, Lcom/youku/adapter/SearchResultAdapter;->setSearchTudouAttention(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    .line 1556
    :cond_d
    :goto_3
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->title:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v7, Lcom/youku/adapter/SearchResultAdapter$19;

    invoke-direct {v7, p0, p2, p1}, Lcom/youku/adapter/SearchResultAdapter$19;-><init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->score:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v7, "0.0"

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->score:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1570
    :cond_e
    const-string v7, "dazhu"

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->score:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->score:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, "tempScore":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_17

    .line 1573
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1574
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u5206"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    .end local v2    # "tempScore":[Ljava/lang/String;
    :goto_4
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->stripe_top:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1492
    :cond_f
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1493
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1494
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1495
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v6, v6, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v7, v6, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1498
    const-string v7, "dazhu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchManager\u5185 :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  result.get(position).name : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    const/16 v7, 0x3e9

    if-eq v6, v7, :cond_10

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    const/16 v7, 0x3ea

    if-eq v6, v7, :cond_10

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    if-nez v6, :cond_11

    .line 1508
    :cond_10
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1510
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u5176\u5b83"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1512
    :cond_11
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1514
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v7, v6, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchIcon$IconResults;

    .line 1516
    .local v1, "icon":Lcom/youku/vo/SearchIcon$IconResults;
    iget-object v6, v1, Lcom/youku/vo/SearchIcon$IconResults;->icon_url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1517
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/youku/vo/SearchIcon$IconResults;->icon_url:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1524
    :goto_5
    iget-object v6, v1, Lcom/youku/vo/SearchIcon$IconResults;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1525
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v1, Lcom/youku/vo/SearchIcon$IconResults;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1521
    :cond_12
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1527
    :cond_13
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1532
    .end local v1    # "icon":Lcom/youku/vo/SearchIcon$IconResults;
    :cond_14
    const-string v7, "dazhu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchManager\u5916 :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  result.get(position).name : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    const/16 v7, 0x3e9

    if-eq v6, v7, :cond_15

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_id:I

    const/16 v7, 0x3ea

    if-eq v6, v7, :cond_15

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    if-nez v6, :cond_16

    .line 1542
    :cond_15
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1544
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u5176\u5b83"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1546
    :cond_16
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1548
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_drawable:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1550
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v6, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v6, v6, Lcom/youku/vo/SearchDirectDaoSources;->site_name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1578
    .restart local v2    # "tempScore":[Ljava/lang/String;
    :cond_17
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1581
    .end local v2    # "tempScore":[Ljava/lang/String;
    :cond_18
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private initBSideView_ARTSSHOW(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;I)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "postion"    # I
    .param p4, "cate_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1681
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0302cc

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1684
    .local v0, "searchdirect_more_item_gridview_layout":Landroid/view/View;
    const v1, 0x7f0c0ccb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {p1, v1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1686
    new-instance v2, Lcom/youku/adapter/BSideListViewAdapter;

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-direct {v2, v1, p3}, Lcom/youku/adapter/BSideListViewAdapter;-><init>(Lcom/tudou/ui/fragment/SearchTudouActivity;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/BSideListViewAdapter;)Lcom/youku/adapter/BSideListViewAdapter;

    .line 1688
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/youku/adapter/BSideListViewAdapter;->setResultPostion(I)V

    .line 1689
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/youku/adapter/BSideListViewAdapter;->setCateId(I)V

    .line 1690
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->currentPage:I

    invoke-virtual {v2, v1}, Lcom/youku/adapter/BSideListViewAdapter;->setCurrentPage(I)V

    .line 1692
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideListViewAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1694
    return-void
.end method

.method private initBSideView_Filter(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
    .locals 3
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->pageText:Ljava/util/ArrayList;

    .line 1636
    .local v0, "filterText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1638
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setStrings(Ljava/util/ArrayList;I)V

    .line 1639
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$20;

    invoke-direct {v2, p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter$20;-><init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setOnSearchDirectFilterSelect(Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;)V

    .line 1654
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v2

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->currentPage:I

    invoke-virtual {v2, v1}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setCurrPage(I)V

    goto :goto_0
.end method

.method private initBSideView_SHOW(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 1589
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040043

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1591
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x10a0003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1593
    .local v1, "outAnimation":Landroid/view/animation/Animation;
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1594
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1595
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    packed-switch v2, :pswitch_data_0

    .line 1630
    :goto_0
    :pswitch_0
    return-void

    .line 1598
    :pswitch_1
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1, v2}, Lcom/youku/adapter/SearchResultAdapter;->initBSideView_TVSHOW(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1604
    :pswitch_2
    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    invoke-direct {p0, p2, p1, v3, v2}, Lcom/youku/adapter/SearchResultAdapter;->initBSideView_ARTSSHOW(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;I)V

    goto :goto_0

    .line 1595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initBSideView_TVSHOW(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "postion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1662
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0302ca

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1665
    .local v0, "searchdirect_more_item_gridview_layout":Landroid/view/View;
    const v1, 0x7f0c0cc7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-static {p1, v1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/GridView;)Landroid/widget/GridView;

    .line 1667
    new-instance v2, Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-direct {v2, v1, p3}, Lcom/youku/adapter/BSideGridViewAdapter;-><init>(Lcom/tudou/ui/fragment/SearchTudouActivity;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/BSideGridViewAdapter;)Lcom/youku/adapter/BSideGridViewAdapter;

    .line 1669
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/youku/adapter/BSideGridViewAdapter;->setResultPostion(I)V

    .line 1670
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;

    move-result-object v2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->currentPage:I

    invoke-virtual {v2, v1}, Lcom/youku/adapter/BSideGridViewAdapter;->setCurrentPage(I)V

    .line 1672
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/GridView;

    move-result-object v1

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/BSideGridViewAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1674
    return-void
.end method

.method private initChannelViewHolder(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 785
    const v0, 0x7f0c0c73

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1702(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 787
    const v0, 0x7f0c0c78

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1802(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 789
    const v0, 0x7f0c0c77

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1902(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 791
    const v0, 0x7f0c0c79

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2002(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 793
    const v0, 0x7f0c0c6f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2102(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 795
    const v0, 0x7f0c0c71

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2202(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 797
    const v0, 0x7f0c0c75

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2302(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 799
    const v0, 0x7f0c0c76

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2402(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 801
    const v0, 0x7f0c0c7d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2502(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/widget/GridView;)Landroid/widget/GridView;

    .line 803
    return-void
.end method

.method private initLayoutBottom(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    packed-switch v0, :pswitch_data_0

    .line 1430
    :goto_0
    :pswitch_0
    return-void

    .line 1397
    :pswitch_1
    invoke-direct {p0, p2, p3, p1}, Lcom/youku/adapter/SearchResultAdapter;->initTVLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V

    goto :goto_0

    .line 1403
    :pswitch_2
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/youku/adapter/SearchResultAdapter;->initARTSLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;II)V

    goto :goto_0

    .line 1407
    :pswitch_3
    invoke-direct {p0, p2, p3, p1}, Lcom/youku/adapter/SearchResultAdapter;->initMOVIESLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V

    goto :goto_0

    .line 1394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initMOVIESLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
    .locals 5
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1353
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1355
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0479

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1357
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1359
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1360
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0302c4

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1363
    .local v0, "layout_bottom_movie":Landroid/view/View;
    const v2, 0x7f0c0ca8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 1365
    const v2, 0x7f0c00f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1367
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->stripe_top:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->stripe_top:Ljava/lang/String;

    const-string v3, "\u9884\u544a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\u9884\u544a\u7247\u64ad\u653e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$7200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$18;

    invoke-direct {v3, p0, p3}, Lcom/youku/adapter/SearchResultAdapter$18;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    return-void
.end method

.method private initShowViewHolder(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 903
    const v0, 0x7f0c0210

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 905
    const v0, 0x7f0c0c8c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ViewSwitcher;)Landroid/widget/ViewSwitcher;

    .line 907
    const v0, 0x7f0c0c8d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 909
    const v0, 0x7f0c01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 911
    const v0, 0x7f0c020d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 912
    const v0, 0x7f0c020e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 914
    const v0, 0x7f0c020f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 916
    const v0, 0x7f0c0202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 918
    const v0, 0x7f0c0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 920
    const v0, 0x7f0c0206

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 922
    const v0, 0x7f0c0207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 924
    const v0, 0x7f0c0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 926
    const v0, 0x7f0c0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 928
    const v0, 0x7f0c020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 930
    const v0, 0x7f0c020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 932
    const v0, 0x7f0c020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 934
    const v0, 0x7f0c01fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 936
    const v0, 0x7f0c01fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 938
    const v0, 0x7f0c01ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 940
    const v0, 0x7f0c0200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 942
    const v0, 0x7f0c0203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 944
    const v0, 0x7f0c0212

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 946
    const v0, 0x7f0c0213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 948
    const v0, 0x7f0c0214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    .line 950
    const v0, 0x7f0c0216

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 953
    const v0, 0x7f0c0c8f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 955
    const v0, 0x7f0c0c7f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 956
    const v0, 0x7f0c0c81

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 957
    const v0, 0x7f0c0c82

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 959
    const v0, 0x7f0c0c83

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 961
    const v0, 0x7f0c0c84

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 963
    const v0, 0x7f0c0c85

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 965
    const v0, 0x7f0c0c86

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6002(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    .line 967
    const v0, 0x7f0c0c87

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6102(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 969
    const v0, 0x7f0c0c88

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6202(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 971
    const v0, 0x7f0c0063

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 972
    return-void
.end method

.method private initTVLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
    .locals 12
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1170
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1172
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1174
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1176
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0302c3

    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$2900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1179
    .local v8, "layout_bottom_episode":Landroid/view/View;
    const v0, 0x7f0c0c9d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6402(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1181
    const v0, 0x7f0c0c9e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6502(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1183
    const v0, 0x7f0c0ca0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6602(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1185
    const v0, 0x7f0c0ca2

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6702(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1187
    const v0, 0x7f0c0ca4

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6802(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1189
    const v0, 0x7f0c0ca6

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6902(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1191
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 1192
    .local v10, "viewCount":I
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v4, v0, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    .line 1194
    .local v4, "tempItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowset;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1195
    .local v7, "itemSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 1196
    move v5, v6

    .line 1197
    .local v5, "j":I
    if-lt v5, v7, :cond_1

    .line 1273
    .end local v5    # "j":I
    :cond_0
    return-void

    .line 1200
    .restart local v5    # "j":I
    :cond_1
    add-int/lit8 v0, v10, -0x1

    if-eq v5, v0, :cond_5

    .line 1201
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowset;->show_seq:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v0, v0, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1209
    :cond_3
    add-int/lit8 v0, v5, 0x1

    if-ne v0, v7, :cond_4

    .line 1210
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020835

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1212
    :cond_4
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, -0x2f2f30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1214
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1218
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1220
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1236
    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-boolean v0, v0, Lcom/youku/vo/SearchDirectDaoShowset;->isTrailer:Z

    if-eqz v0, :cond_5

    .line 1237
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    :cond_5
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    new-instance v0, Lcom/youku/adapter/SearchResultAdapter$15;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/youku/adapter/SearchResultAdapter$15;-><init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;I)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1227
    :cond_6
    add-int/lit8 v0, v5, 0x1

    if-ne v0, v7, :cond_7

    .line 1228
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020835

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1230
    :cond_7
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1232
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method private initUUGCViewHolder(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 563
    const v0, 0x7f0c0c92

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$502(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 564
    const v0, 0x7f0c0c93

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/YoukuImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$602(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Lcom/youku/widget/YoukuImageView;)Lcom/youku/widget/YoukuImageView;

    .line 565
    const v0, 0x7f0c0c94

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$702(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 566
    const v0, 0x7f0c0c95

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$802(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 567
    const v0, 0x7f0c0c96

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$902(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 569
    const v0, 0x7f0c0c97

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1002(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 570
    const v0, 0x7f0c0c98

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/YoukuImageView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1102(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Lcom/youku/widget/YoukuImageView;)Lcom/youku/widget/YoukuImageView;

    .line 572
    const v0, 0x7f0c0c99

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1202(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 573
    const v0, 0x7f0c0c9a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1302(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 574
    const v0, 0x7f0c0c9b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1402(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 576
    const v0, 0x7f0c0064

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method private intASideFilterView_MAN(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p4, "cur"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v0, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->manPageFilter:Ljava/util/ArrayList;

    .line 1084
    .local v0, "filterText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1086
    :cond_0
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setStrings(Ljava/util/ArrayList;I)V

    .line 1087
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$12;

    invoke-direct {v2, p0, p2}, Lcom/youku/adapter/SearchResultAdapter$12;-><init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setOnSearchDirectFilterSelect(Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;)V

    .line 1098
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setCurrPage(I)V

    goto :goto_0
.end method

.method private intASideHeadView_MAN(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "hol"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1050
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->thumb:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/youku/adapter/SearchResultAdapter;->setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1052
    :cond_0
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5500(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5600(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->occupation:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5700(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->area:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5800(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->birthday:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->constellation:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    const/4 v0, 0x0

    .line 1059
    .local v0, "curPage":I
    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1060
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    .line 1070
    :cond_1
    :goto_0
    new-instance v2, Lcom/youku/adapter/ManGridViewAdapter;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/youku/adapter/ManGridViewAdapter;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    invoke-static {p2, v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6302(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Lcom/youku/adapter/ManGridViewAdapter;)Lcom/youku/adapter/ManGridViewAdapter;

    .line 1072
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/adapter/ManGridViewAdapter;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Lcom/youku/adapter/ManGridViewAdapter;->setASideGridViewTabs(Ljava/util/ArrayList;I)V

    .line 1075
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/youku/adapter/SearchResultAdapter;->intASideFilterView_MAN(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V

    .line 1076
    return-void

    .line 1062
    :cond_2
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->recovery()V

    .line 1063
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1064
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/TABS;

    iget v2, v2, Lcom/youku/vo/TABS;->is_default:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1065
    move v0, v1

    .line 1066
    goto :goto_0

    .line 1063
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setChannelView(ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 808
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2100(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$8;

    invoke-direct {v3, p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter$8;-><init>(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-boolean v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isVuser:Z

    if-eqz v2, :cond_1

    .line 836
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1700(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    :goto_0
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2300(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->small_image_url:Ljava/lang/String;

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 846
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u64ad\u653e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->total_vv:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | \u8ba2\u9605:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->followers_count:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "detail":Ljava/lang/String;
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2400(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    new-instance v3, Lcom/youku/adapter/SearchChannelGridViewAdapter;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->userVideoList:Lcom/youku/vo/UserPlayList;

    invoke-direct {v3, v4, v2}, Lcom/youku/adapter/SearchChannelGridViewAdapter;-><init>(Landroid/app/Activity;Lcom/youku/vo/UserPlayList;)V

    invoke-static {p2, v3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2602(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Lcom/youku/adapter/SearchChannelGridViewAdapter;)Lcom/youku/adapter/SearchChannelGridViewAdapter;

    .line 851
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2500(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/GridView;

    move-result-object v2

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2600(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Lcom/youku/adapter/SearchChannelGridViewAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 852
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1900(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 875
    :goto_1
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/youku/adapter/SearchResultAdapter$9;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/youku/adapter/SearchResultAdapter$9;-><init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    return-void

    .line 838
    .end local v0    # "detail":Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1700(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 858
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v1    # "uid":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1900(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 859
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 860
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 861
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 863
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020851

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 865
    :cond_3
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 866
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 869
    :cond_4
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 871
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0201eb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private setCommonDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    .line 1107
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/youku/adapter/SearchResultAdapter$13;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3000(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$14;

    invoke-direct {v1, p0, p1}, Lcom/youku/adapter/SearchResultAdapter$14;-><init>(Lcom/youku/adapter/SearchResultAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    invoke-direct {p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter;->initASideView_SHOW(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    .line 1162
    invoke-direct {p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter;->initBSideView_SHOW(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    .line 1163
    invoke-direct {p0, p3, p2, p1}, Lcom/youku/adapter/SearchResultAdapter;->initBSideView_Filter(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V

    .line 1164
    invoke-direct {p0, p1, p3, p2}, Lcom/youku/adapter/SearchResultAdapter;->initLayoutBottom(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)V

    .line 1165
    return-void
.end method

.method private setDirectFilterView(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Landroid/view/View;)V
    .locals 3
    .param p1, "filter"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    .param p2, "v7"    # Landroid/view/View;

    .prologue
    .line 442
    const v0, 0x7f0c0c6e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SearchFilterHorizontalSlide;

    invoke-static {p1, v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->access$202(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    .line 444
    const v0, 0x7f0c0062

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->curDirectPos:I

    if-nez v0, :cond_0

    .line 447
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->access$200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/SearchFilterHorizontalSlide;->recovery()V

    .line 448
    :cond_0
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->access$200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setStrings(Ljava/util/ArrayList;I)V

    .line 449
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->access$200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$5;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$5;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setOnSearchDirectFilterSelect(Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;)V

    .line 468
    invoke-static {p1}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;->access$200(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;)Lcom/youku/widget/SearchFilterHorizontalSlide;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->curDirectPos:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setCurrPage(I)V

    .line 470
    :cond_1
    return-void
.end method

.method private setManDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "holder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/youku/adapter/SearchResultAdapter;->intASideHeadView_MAN(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;)V

    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, "showMore":Z
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v4, v4, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1013
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v3, "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v4, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    .line 1015
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1016
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1017
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/TABS;

    .line 1018
    .local v2, "tabs":Lcom/youku/vo/TABS;
    iget v4, v2, Lcom/youku/vo/TABS;->show_type:I

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 1020
    const/4 v1, 0x1

    .line 1030
    .end local v0    # "i":I
    .end local v2    # "tabs":Lcom/youku/vo/TABS;
    .end local v3    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 1031
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1034
    :goto_2
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/youku/adapter/SearchResultAdapter$11;

    invoke-direct {v5, p0, p4, p1}, Lcom/youku/adapter/SearchResultAdapter$11;-><init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    return-void

    .line 1022
    .restart local v0    # "i":I
    .restart local v2    # "tabs":Lcom/youku/vo/TABS;
    .restart local v3    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    :cond_1
    iget v4, v2, Lcom/youku/vo/TABS;->show_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/youku/vo/TABS;->videos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_2

    .line 1024
    const/4 v1, 0x1

    .line 1025
    goto :goto_1

    .line 1015
    .end local v2    # "tabs":Lcom/youku/vo/TABS;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    .end local v0    # "i":I
    .end local v3    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TABS;>;"
    :cond_3
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6200(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setSearchTudouAttention(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1708
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$4300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1709
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1710
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1712
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1713
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1714
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020851

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1725
    :goto_0
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/adapter/SearchResultAdapter$21;-><init>(Lcom/youku/adapter/SearchResultAdapter;ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1761
    return-void

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1717
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1718
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 1720
    :cond_1
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1721
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3400(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1722
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$3300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020852

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setShowView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/youku/adapter/SearchResultAdapter$ViewHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 978
    sparse-switch p5, :sswitch_data_0

    .line 1004
    :goto_0
    return-void

    .line 980
    :sswitch_0
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 981
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 983
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/adapter/SearchResultAdapter;->setCommonDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)V

    goto :goto_0

    .line 986
    :sswitch_1
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 987
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$5300(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$10;

    invoke-direct {v1, p0, p4, p1}, Lcom/youku/adapter/SearchResultAdapter$10;-><init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    invoke-static {p3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 1001
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/adapter/SearchResultAdapter;->setManDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 978
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "viewHolder"    # Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p3, "ugcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 679
    :goto_0
    return-void

    .line 586
    :cond_0
    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->totaltime:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 587
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$900(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->totaltime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :cond_1
    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v2, v4, Lcom/youku/vo/TudouUGC;->pic_hd:Ljava/lang/String;

    .line 593
    .local v2, "imageUrl1":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v4, :cond_3

    .line 594
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 596
    :cond_2
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v5

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 598
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$600(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/youku/widget/YoukuImageView;->setTag(Ljava/lang/Object;)V

    .line 601
    :cond_3
    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->owner_username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 602
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$800(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u81ea\u9891\u9053:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->owner_username:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-boolean v4, v4, Lcom/youku/vo/TudouUGC;->isVuser:Z

    if-eqz v4, :cond_4

    .line 605
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a1f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    .local v0, "bit":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 608
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 609
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$800(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 615
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$700(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$500(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/youku/adapter/SearchResultAdapter$6;

    invoke-direct {v5, p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter$6;-><init>(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_6

    .line 631
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1000(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 613
    :cond_5
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$800(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 634
    :cond_6
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1000(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 635
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->totaltime:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 636
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1400(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->totaltime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_7
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v3, v4, Lcom/youku/vo/TudouUGC;->pic_hd:Ljava/lang/String;

    .line 643
    .local v3, "imageUrl2":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    if-eqz v4, :cond_9

    .line 644
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/widget/YoukuImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 646
    :cond_8
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v5

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 648
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1100(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Lcom/youku/widget/YoukuImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/youku/widget/YoukuImageView;->setTag(Ljava/lang/Object;)V

    .line 651
    :cond_9
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->owner_username:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 652
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1300(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u81ea\u9891\u9053:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->owner_username:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-boolean v4, v4, Lcom/youku/vo/TudouUGC;->isVuser:Z

    if-eqz v4, :cond_a

    .line 655
    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a1f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 657
    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 658
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 659
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1300(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 665
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_2
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1200(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouUGC;

    iget-object v4, v4, Lcom/youku/vo/TudouUGC;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1000(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/youku/adapter/SearchResultAdapter$7;

    invoke-direct {v5, p0, p1, p3}, Lcom/youku/adapter/SearchResultAdapter$7;-><init>(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 663
    :cond_b
    invoke-static {p2}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;->access$1300(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setUserImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchResultAdapter$26;

    invoke-direct {v2, p0, p2, p1}, Lcom/youku/adapter/SearchResultAdapter$26;-><init>(Lcom/youku/adapter/SearchResultAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 2007
    return-void
.end method

.method private trackUgcSDK(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "ugcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    const/4 v5, 0x0

    .line 1917
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1918
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-eqz v2, :cond_0

    .line 1919
    const-string v3, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search|resultFilter||key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&itemCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/TudouUGC;

    iget-object v2, v2, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v2, v5, v3, v4}, Lcom/tudou/ui/fragment/SearchManager;->getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;

    move-result-object v0

    .line 1924
    .local v0, "click":Lcom/youku/vo/SokuClick;
    const-string v2, "\u7b5b\u9009\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u9875-UGC\u7b5b\u9009\u89c6\u9891"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V

    .line 1937
    :goto_0
    return-void

    .line 1928
    .end local v0    # "click":Lcom/youku/vo/SokuClick;
    :cond_0
    const-string v3, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search|ugcVideoClick||key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&itemCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/TudouUGC;

    iget-object v2, v2, Lcom/youku/vo/TudouUGC;->itemid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v2, v5, v3, v4}, Lcom/tudou/ui/fragment/SearchManager;->getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;

    move-result-object v0

    .line 1933
    .restart local v0    # "click":Lcom/youku/vo/SokuClick;
    const-string v2, "\u641c\u7d22\u9875\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u9875-UGC\u89c6\u9891"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "count":I
    const/4 v1, 0x0

    .line 137
    .local v1, "uline":I
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    .line 138
    invoke-direct {p0}, Lcom/youku/adapter/SearchResultAdapter;->getDataType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 184
    :cond_0
    :goto_1
    const-string v4, "search_3.7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showFilter.size : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "search_3.7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result.size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-nez v5, :cond_e

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "search_3.7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getcount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 142
    :cond_2
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    .line 145
    :goto_4
    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    if-ne v2, v4, :cond_4

    .line 146
    const/4 v1, 0x1

    .line 150
    :goto_5
    add-int v2, v0, v1

    add-int/lit8 v0, v2, 0x1

    .line 151
    goto :goto_1

    .line 144
    :cond_3
    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_4

    .line 148
    :cond_4
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    goto :goto_5

    .line 153
    :pswitch_1
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 155
    :cond_5
    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    if-ne v2, v4, :cond_6

    .line 156
    const/4 v1, 0x1

    .line 160
    :goto_6
    if-nez v1, :cond_7

    move v2, v4

    :goto_7
    add-int/lit8 v0, v2, 0x1

    .line 161
    const-class v2, Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRECT_EMPTY_UGC : count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :cond_6
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    goto :goto_6

    :cond_7
    move v2, v1

    .line 160
    goto :goto_7

    .line 165
    :pswitch_2
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 166
    :cond_8
    iget v0, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    .line 169
    :goto_8
    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v2, :cond_0

    .line 170
    :cond_9
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_1

    .line 168
    :cond_a
    iget v2, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_8

    .line 173
    :pswitch_3
    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v2, :cond_b

    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v2, :cond_c

    .line 174
    :cond_b
    const-string v2, "SearchResultFragment"

    const-string v4, "DIRECT_UGC_EMPTY  :  2"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 177
    :cond_c
    const-string v2, "SearchResultFragment"

    const-string v4, "DIRECT_UGC_EMPTY  :  0"

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    .line 180
    goto/16 :goto_1

    .line 184
    :cond_d
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_2

    .line 186
    :cond_e
    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto/16 :goto_3

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getCurPageTotal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "len":I
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 272
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "type":I
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/adapter/SearchResultAdapter;->getViewTyep(I)I

    move-result v0

    .line 211
    const-class v1, Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemViewType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 217
    :goto_0
    return v1

    .line 215
    :cond_1
    if-nez p1, :cond_2

    .line 216
    const/4 v1, 0x7

    goto :goto_0

    .line 217
    :cond_2
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/youku/adapter/SearchResultAdapter;->getViewTyep(I)I

    move-result v1

    goto :goto_0
.end method

.method public getUgcItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUgcSize()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    const/4 v4, 0x0

    .line 278
    .local v4, "viewHolder":Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    const/4 v12, 0x0

    .line 279
    .local v12, "ugcHolder":Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    const/4 v7, 0x0

    .line 280
    .local v7, "channel":Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    const/4 v8, 0x0

    .line 281
    .local v8, "filter":Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    invoke-virtual/range {p0 .. p1}, Lcom/youku/adapter/SearchResultAdapter;->getItemViewType(I)I

    move-result v6

    .line 282
    .local v6, "type":I
    move/from16 v10, p1

    .line 283
    .local v10, "tempPos":I
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    add-int/lit8 p1, p1, -0x1

    .line 285
    :cond_0
    if-nez p2, :cond_4

    .line 286
    packed-switch v6, :pswitch_data_0

    :goto_0
    move-object/from16 v13, p2

    .line 435
    :goto_1
    return-object v13

    .line 288
    :pswitch_0
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302bb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 290
    new-instance v8, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;

    .end local v8    # "filter":Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    invoke-direct {v8, p0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    .line 291
    .restart local v8    # "filter":Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/youku/adapter/SearchResultAdapter;->setDirectFilterView(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Landroid/view/View;)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302be

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 297
    new-instance v4, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .end local v4    # "viewHolder":Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    .line 298
    .restart local v4    # "viewHolder":Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    move-object/from16 v0, p2

    invoke-direct {p0, v4, v0}, Lcom/youku/adapter/SearchResultAdapter;->initShowViewHolder(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;)V

    .line 299
    iget-object v5, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/youku/adapter/SearchResultAdapter;->setShowView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302bc

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 304
    new-instance v7, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .end local v7    # "channel":Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    invoke-direct {v7, p0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    .line 305
    .restart local v7    # "channel":Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0}, Lcom/youku/adapter/SearchResultAdapter;->initChannelViewHolder(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/youku/adapter/SearchResultAdapter;->setChannelView(ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302c0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 312
    new-instance v12, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .end local v12    # "ugcHolder":Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    invoke-direct {v12, p0}, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    .line 313
    .restart local v12    # "ugcHolder":Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    move-object/from16 v0, p2

    invoke-direct {p0, v12, v0}, Lcom/youku/adapter/SearchResultAdapter;->initUUGCViewHolder(Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Landroid/view/View;)V

    .line 314
    iget-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->btnMoreDirect:Z

    if-eqz v1, :cond_1

    .line 315
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v12, v2}, Lcom/youku/adapter/SearchResultAdapter;->setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 317
    :cond_1
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v12, v2}, Lcom/youku/adapter/SearchResultAdapter;->setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 321
    :pswitch_4
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v1, v10}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setCurrPosition(I)V

    .line 322
    iget-object v13, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    goto/16 :goto_1

    .line 324
    :pswitch_5
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030137

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 326
    .local v13, "view":Landroid/view/View;
    const v1, 0x7f0c01cf

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 327
    .local v11, "txt":Landroid/widget/TextView;
    const-string v1, "SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type  state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const v2, 0x7f0d02d4

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_2
    iget-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->filtering:Z

    if-eqz v1, :cond_3

    .line 343
    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 332
    :cond_2
    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$1;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 345
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 348
    .end local v11    # "txt":Landroid/widget/TextView;
    .end local v13    # "view":Landroid/view/View;
    :pswitch_6
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030116

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 350
    .local v14, "view1":Landroid/view/View;
    const v1, 0x7f0c04f1

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 352
    .local v9, "moreBtn":Landroid/widget/Button;
    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$2;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$2;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v13, v14

    .line 360
    goto/16 :goto_1

    .line 363
    .end local v9    # "moreBtn":Landroid/widget/Button;
    .end local v14    # "view1":Landroid/view/View;
    :cond_4
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 372
    :pswitch_7
    const v1, 0x7f0c0063

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    check-cast v4, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    .line 373
    .restart local v4    # "viewHolder":Lcom/youku/adapter/SearchResultAdapter$ViewHolder;
    invoke-static {v4}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 374
    invoke-static {v4}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 375
    iget-object v5, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/youku/adapter/SearchResultAdapter;->setShowView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 367
    :pswitch_8
    const v1, 0x7f0c0062

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "filter":Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    check-cast v8, Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;

    .line 368
    .restart local v8    # "filter":Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/youku/adapter/SearchResultAdapter;->setDirectFilterView(Lcom/youku/adapter/SearchResultAdapter$ViewHolderFilter;Landroid/view/View;)V

    goto/16 :goto_0

    .line 378
    :pswitch_9
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302bc

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 380
    new-instance v7, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    .end local v7    # "channel":Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    invoke-direct {v7, p0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    .line 381
    .restart local v7    # "channel":Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;
    move-object/from16 v0, p2

    invoke-direct {p0, v7, v0}, Lcom/youku/adapter/SearchResultAdapter;->initChannelViewHolder(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/youku/adapter/SearchResultAdapter;->setChannelView(ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 385
    :pswitch_a
    const v1, 0x7f0c0064

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "ugcHolder":Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    check-cast v12, Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;

    .line 386
    .restart local v12    # "ugcHolder":Lcom/youku/adapter/SearchResultAdapter$UGCViewHolder;
    iget-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->btnMoreDirect:Z

    if-eqz v1, :cond_5

    .line 387
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v12, v2}, Lcom/youku/adapter/SearchResultAdapter;->setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 389
    :cond_5
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->slines:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v12, v2}, Lcom/youku/adapter/SearchResultAdapter;->setUgcView(ILcom/youku/adapter/SearchResultAdapter$UGCViewHolder;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 393
    :pswitch_b
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v1, v10}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setCurrPosition(I)V

    .line 394
    iget-object v13, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    goto/16 :goto_1

    .line 396
    :pswitch_c
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030137

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 398
    .restart local v13    # "view":Landroid/view/View;
    const v1, 0x7f0c01cf

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 399
    .restart local v11    # "txt":Landroid/widget/TextView;
    const-string v1, "SearchResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u7528 type  state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const v2, 0x7f0d02d4

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :goto_3
    iget-boolean v1, p0, Lcom/youku/adapter/SearchResultAdapter;->filtering:Z

    if-eqz v1, :cond_7

    .line 415
    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 404
    :cond_6
    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$3;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$3;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mFragment:Lcom/tudou/ui/fragment/SearchTudouFragment;

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 417
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 420
    .end local v11    # "txt":Landroid/widget/TextView;
    .end local v13    # "view":Landroid/view/View;
    :pswitch_d
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030116

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 422
    .restart local v14    # "view1":Landroid/view/View;
    const v1, 0x7f0c04f1

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 424
    .restart local v9    # "moreBtn":Landroid/widget/Button;
    new-instance v1, Lcom/youku/adapter/SearchResultAdapter$4;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchResultAdapter$4;-><init>(Lcom/youku/adapter/SearchResultAdapter;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v13, v14

    .line 432
    goto/16 :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 363
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x8

    return v0
.end method

.method public setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    .local p2, "showFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 537
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->showFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 539
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 546
    return-void
.end method

.method public setFiltering(Z)V
    .locals 0
    .param p1, "filtering"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/youku/adapter/SearchResultAdapter;->filtering:Z

    .line 127
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter;->handler:Landroid/os/Handler;

    .line 1698
    return-void
.end method

.method public setSManager(Lcom/tudou/ui/fragment/SearchManager;)V
    .locals 0
    .param p1, "searchManager"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    .line 1704
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/youku/adapter/SearchResultAdapter;->state:I

    .line 131
    return-void
.end method

.method public setUgcItems(Ljava/util/ArrayList;IZ)V
    .locals 4
    .param p2, "page"    # I
    .param p3, "isFilterSort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "ugcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 489
    if-ne p2, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 492
    :cond_0
    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 493
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 495
    :cond_1
    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter;->page:I

    .line 496
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    .line 500
    iput v3, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    .line 513
    :goto_0
    return-void

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 503
    iput v3, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    .line 504
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    goto :goto_0

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 506
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    .line 507
    iput v3, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    goto :goto_0

    .line 509
    :cond_5
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcItems1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLines:I

    .line 510
    iput v2, p0, Lcom/youku/adapter/SearchResultAdapter;->ugcLastLineCount:I

    goto :goto_0
.end method
