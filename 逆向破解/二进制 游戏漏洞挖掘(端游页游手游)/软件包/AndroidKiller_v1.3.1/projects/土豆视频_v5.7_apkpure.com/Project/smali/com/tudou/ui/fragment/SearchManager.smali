.class public Lcom/tudou/ui/fragment/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;
    }
.end annotation


# static fields
.field static D:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_HOT_HIS_WORD:I = 0x71

.field public static final GET_HOT_SEARCH_AGGIN_SUCCESS:I = 0x6f

.field public static final GET_HOT_SEARCH_FAIL:I = 0x70

.field public static final GET_HOT_SEARCH_SUCCESS:I = 0x6e

.field public static final PLAY_MODE_EMBEDDED_PLAYER:Ljava/lang/String; = "0"

.field public static final PLAY_MODE_INSIDE_APP:Ljava/lang/String; = "2"

.field public static final PLAY_MODE_REDIRECTED_FROM_EMBEDDED_PLAY:Ljava/lang/String; = "3"

.field public static final PLAY_MODE_STANDALONE_PLAYER:Ljava/lang/String; = "1"

.field static S:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_TAB_STRING:Ljava/lang/String; = "search_tab"

.field static T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static aaid:Ljava/lang/String;

.field private static instance:Lcom/tudou/ui/fragment/SearchManager;

.field public static kref:Ljava/lang/String;

.field private static modeurl:Ljava/lang/String;

.field public static other_site_ids:[I

.field public static other_site_names:[Ljava/lang/String;

.field public static other_site_resids:[I

.field private static vid:Ljava/lang/String;


# instance fields
.field public AllDirectItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation
.end field

.field public final CATE_ID_ALBUM:I

.field public final CATE_ID_ARTS:I

.field public final CATE_ID_AWARDS:I

.field public final CATE_ID_BIG_WORD:I

.field public final CATE_ID_CARTOON:I

.field public final CATE_ID_DIV:I

.field public final CATE_ID_EDU:I

.field public final CATE_ID_EPG:I

.field public final CATE_ID_IMP:I

.field public final CATE_ID_INFO:I

.field public final CATE_ID_LIST:I

.field public final CATE_ID_MAN:I

.field public final CATE_ID_MOVIE:I

.field public final CATE_ID_MOVIE_SET:I

.field public final CATE_ID_RECORD:I

.field public final CATE_ID_TV:I

.field private adapter:Lcom/youku/adapter/SearchResultAdapter;

.field public cateIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private correntUgcWord:Ljava/lang/String;

.field private directDao:Lcom/youku/vo/SearchDirectDao;

.field private fail_reason:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public iatttention:Lcom/tudou/service/attention/IAttention;

.field public iconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/SearchIcon$IconResults;",
            ">;"
        }
    .end annotation
.end field

.field public icons:Lcom/youku/vo/SearchIcon;

.field public inputBoxHotWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field page:I

.field public searchOfDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfData;",
            ">;"
        }
    .end annotation
.end field

.field public showableDirectItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation
.end field

.field public ugc1noqc:Z

.field private ugcDao:Lcom/youku/vo/SearchUgcDao;

.field public ugcFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;"
        }
    .end annotation
.end field

.field private ugcItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;"
        }
    .end annotation
.end field

.field public ugcSort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCSort;",
            ">;"
        }
    .end annotation
.end field

.field public ugcTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    .line 111
    sput-object v1, Lcom/tudou/ui/fragment/SearchManager;->other_site_names:[Ljava/lang/String;

    .line 112
    sput-object v1, Lcom/tudou/ui/fragment/SearchManager;->other_site_ids:[I

    .line 113
    sput-object v1, Lcom/tudou/ui/fragment/SearchManager;->other_site_resids:[I

    .line 606
    const-string v0, "app"

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 607
    const-string v0, "k"

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    .line 1033
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    .line 1034
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->D:Ljava/util/HashMap;

    .line 1035
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_TV:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_MOVIE:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_ARTS:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_CARTOON:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_MAN:I

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_EDU:I

    .line 74
    const/16 v0, 0x9

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_RECORD:I

    .line 75
    const/16 v0, 0x11

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_INFO:I

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_LIST:I

    .line 78
    const/16 v0, 0xb

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_ALBUM:I

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_DIV:I

    .line 80
    const/16 v0, 0xd

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_EPG:I

    .line 81
    const/16 v0, 0xe

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_IMP:I

    .line 82
    const/16 v0, 0xf

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_AWARDS:I

    .line 83
    const/16 v0, 0x10

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_MOVIE_SET:I

    .line 84
    const/16 v0, 0x13

    iput v0, p0, Lcom/tudou/ui/fragment/SearchManager;->CATE_ID_BIG_WORD:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->iconMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->showableDirectItem:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    .line 114
    const-string/jumbo v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->fail_reason:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->inputBoxHotWords:Ljava/util/ArrayList;

    .line 241
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->correntUgcWord:Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->putData()V

    .line 252
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->context:Landroid/app/Activity;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SearchManager;)Lcom/youku/vo/SearchDirectDao;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchManager;)Lcom/youku/vo/SearchUgcDao;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/SearchManager;Lcom/youku/vo/SearchUgcDao;)Lcom/youku/vo/SearchUgcDao;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;
    .param p1, "x1"    # Lcom/youku/vo/SearchUgcDao;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchManager;->setUGCData()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getAaid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1020
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1021
    .local v3, "rd1":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1023
    .local v0, "currentTime":J
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1025
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    .line 1027
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 1030
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getAgainHotHisWord(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .line 1006
    .local v0, "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    if-eqz v0, :cond_0

    .line 1007
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1011
    :cond_0
    return-void
.end method

.method private getCateByCateId(I)Ljava/lang/String;
    .locals 1
    .param p1, "cateId"    # I

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 212
    :pswitch_0
    const-string/jumbo v0, "\u5176\u5b83"

    :goto_0
    return-object v0

    .line 194
    :pswitch_1
    const-string/jumbo v0, "\u7535\u89c6\u5267"

    goto :goto_0

    .line 196
    :pswitch_2
    const-string/jumbo v0, "\u7535\u5f71"

    goto :goto_0

    .line 198
    :pswitch_3
    const-string/jumbo v0, "\u7efc\u827a"

    goto :goto_0

    .line 200
    :pswitch_4
    const-string/jumbo v0, "\u52a8\u6f2b"

    goto :goto_0

    .line 202
    :pswitch_5
    const-string/jumbo v0, "\u4eba\u7269"

    goto :goto_0

    .line 204
    :pswitch_6
    const-string/jumbo v0, "\u6559\u80b2"

    goto :goto_0

    .line 206
    :pswitch_7
    const-string/jumbo v0, "\u7eaa\u5f55\u7247"

    goto :goto_0

    .line 208
    :pswitch_8
    const-string/jumbo v0, "\u8d44\u8baf"

    goto :goto_0

    .line 210
    :pswitch_9
    const-string/jumbo v0, "\u81ea\u9891\u9053"

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private getCateIdByCate(Ljava/lang/String;)I
    .locals 1
    .param p1, "cate"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string/jumbo v0, "\u7535\u89c6\u5267"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 218
    :cond_0
    const-string/jumbo v0, "\u7535\u5f71"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x2

    goto :goto_0

    .line 220
    :cond_1
    const-string/jumbo v0, "\u7efc\u827a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x3

    goto :goto_0

    .line 222
    :cond_2
    const-string/jumbo v0, "\u52a8\u6f2b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    const/4 v0, 0x5

    goto :goto_0

    .line 224
    :cond_3
    const-string/jumbo v0, "\u4eba\u7269"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    const/4 v0, 0x6

    goto :goto_0

    .line 226
    :cond_4
    const-string/jumbo v0, "\u6559\u80b2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const/16 v0, 0x8

    goto :goto_0

    .line 228
    :cond_5
    const-string/jumbo v0, "\u7eaa\u5f55\u7247"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    const/16 v0, 0x9

    goto :goto_0

    .line 230
    :cond_6
    const-string/jumbo v0, "\u8d44\u8baf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    const/16 v0, 0x11

    goto :goto_0

    .line 232
    :cond_7
    const-string/jumbo v0, "\u5168\u90e8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_8
    const-string/jumbo v0, "\u81ea\u9891\u9053"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    const/16 v0, 0xe

    goto :goto_0

    .line 237
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDensity(Landroid/app/Activity;)V
    .locals 10
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 905
    .local v4, "screenWidth":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 906
    .local v3, "screenHeight":I
    const-string v7, "getDensity -- "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 910
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 911
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 912
    .local v0, "density":F
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 913
    .local v1, "densityDPI":I
    iget v5, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 914
    .local v5, "xdpi":F
    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 915
    .local v6, "ydpi":F
    const-string v7, "getDensity -- "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xdpi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; ydpi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v7, "getDensity -- "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "density="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; densityDPI="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public static getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1073
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 1105
    :goto_0
    return-object v3

    .line 1076
    :cond_0
    :try_start_0
    const-string v7, "\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "fs":[Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(I)V

    .line 1078
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 1079
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1081
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_5

    .line 1083
    aget-object v7, v1, v2

    const-string/jumbo v8, "timescope"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1084
    aget-object v7, v1, v2

    aget-object v8, v1, v2

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1086
    .local v5, "temp":Ljava/lang/String;
    sget-object v7, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "temp":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1087
    .restart local v5    # "temp":Ljava/lang/String;
    const-string v7, "T:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .end local v5    # "temp":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1088
    :cond_3
    aget-object v7, v1, v2

    const-string/jumbo v8, "vtype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1089
    aget-object v7, v1, v2

    aget-object v8, v1, v2

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1091
    .restart local v5    # "temp":Ljava/lang/String;
    sget-object v7, Lcom/tudou/ui/fragment/SearchManager;->D:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "temp":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1092
    .restart local v5    # "temp":Ljava/lang/String;
    const-string v7, "D:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1104
    .end local v1    # "fs":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v6

    .line 1105
    goto/16 :goto_0

    .line 1093
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fs":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    aget-object v7, v1, v2

    const-string v8, "cateids"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1094
    aget-object v7, v1, v2

    aget-object v8, v1, v2

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .restart local v5    # "temp":Ljava/lang/String;
    sget-object v7, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "temp":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1097
    .restart local v5    # "temp":Ljava/lang/String;
    const-string v7, "S:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1100
    .end local v5    # "temp":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "result":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1103
    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 245
    const-class v1, Lcom/tudou/ui/fragment/SearchManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->instance:Lcom/tudou/ui/fragment/SearchManager;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/tudou/ui/fragment/SearchManager;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->instance:Lcom/tudou/ui/fragment/SearchManager;

    .line 247
    :cond_0
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->instance:Lcom/tudou/ui/fragment/SearchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static goFragmentHistory(ILcom/tudou/ui/fragment/SearchTudouHistoryFragment;Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    .locals 3
    .param p0, "curFragemtn"    # I
    .param p1, "history"    # Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
    .param p2, "fragment"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 950
    invoke-virtual {p2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 951
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 p1, 0x0

    .line 952
    new-instance p1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    .end local p1    # "history":Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
    invoke-direct {p1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;-><init>()V

    .line 953
    .restart local p1    # "history":Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c05e1

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 956
    return-void
.end method

.method public static goFragmentHot(ILcom/tudou/ui/fragment/SearchTudouHotFragment;Lcom/tudou/ui/fragment/SearchTudouFragment;)V
    .locals 4
    .param p0, "curFragemtn"    # I
    .param p1, "hot"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .param p2, "fragment"    # Lcom/tudou/ui/fragment/SearchTudouFragment;

    .prologue
    .line 928
    :try_start_0
    invoke-virtual {p2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 929
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 930
    if-nez p1, :cond_0

    .line 931
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;-><init>()V

    .end local p1    # "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .local v0, "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    move-object p1, v0

    .line 933
    .end local v0    # "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .restart local p1    # "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c05e1

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 942
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/SearchManager;->setHotShow(Landroid/support/v4/app/FragmentManager;I)V

    .line 946
    .end local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :goto_1
    return-void

    .line 936
    .restart local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 937
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 943
    .end local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 938
    .restart local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 939
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 940
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static goFragmentResult(ILcom/tudou/ui/fragment/SearchResultFragment;Landroid/os/Bundle;Lcom/tudou/ui/fragment/SearchTudouFragment;Z)V
    .locals 3
    .param p0, "curFragemtn"    # I
    .param p1, "result"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p2, "b"    # Landroid/os/Bundle;
    .param p3, "fragment"    # Lcom/tudou/ui/fragment/SearchTudouFragment;
    .param p4, "cancel"    # Z

    .prologue
    .line 961
    invoke-virtual {p3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 962
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchManager;->setHotShow(Landroid/support/v4/app/FragmentManager;I)V

    .line 963
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 964
    if-nez p1, :cond_0

    .line 965
    new-instance p1, Lcom/tudou/ui/fragment/SearchResultFragment;

    .end local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-direct {p1}, Lcom/tudou/ui/fragment/SearchResultFragment;-><init>()V

    .line 966
    .restart local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-virtual {p1, p2}, Lcom/tudou/ui/fragment/SearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 986
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c05e1

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 989
    return-void

    .line 968
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 969
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 970
    if-nez p1, :cond_0

    .line 971
    new-instance p1, Lcom/tudou/ui/fragment/SearchResultFragment;

    .end local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-direct {p1}, Lcom/tudou/ui/fragment/SearchResultFragment;-><init>()V

    .line 972
    .restart local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-virtual {p1, p2}, Lcom/tudou/ui/fragment/SearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 975
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 976
    if-nez p4, :cond_0

    .line 977
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 978
    const/4 p1, 0x0

    .line 979
    if-nez p1, :cond_0

    .line 980
    new-instance p1, Lcom/tudou/ui/fragment/SearchResultFragment;

    .end local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-direct {p1}, Lcom/tudou/ui/fragment/SearchResultFragment;-><init>()V

    .line 981
    .restart local p1    # "result":Lcom/tudou/ui/fragment/SearchResultFragment;
    invoke-virtual {p1, p2}, Lcom/tudou/ui/fragment/SearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/SearchDirectDaoShowset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "item"    # Lcom/youku/vo/SearchDirectDaoShowset;
    .param p2, "payType"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "aid"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "100"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 622
    :cond_2
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-static {p0, p4, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_3
    if-nez p3, :cond_5

    .line 626
    const-string v2, "app"

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 627
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    .line 628
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "video_id"

    sget-object v3, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "intent.extra.album.id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v2, "title"

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    invoke-static {p0, v2, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto :goto_0

    .line 638
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_5
    const-string v2, "0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 640
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 641
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 642
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 644
    :cond_6
    const-string/jumbo v2, "url\u4e3a\u7a7a"

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 645
    const-string/jumbo v2, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_7
    const-string v2, "1"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 650
    :try_start_0
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 651
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    const-string v2, "2"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 657
    const-string v2, "app"

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    .line 658
    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    .line 659
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowset;->iid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v4, p1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 664
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v2, "video_id"

    sget-object v3, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v2, "intent.extra.album.id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string/jumbo v2, "title"

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowset;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    invoke-static {p0, v2, v0}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Lcom/tudou/android/Youku$Type;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 669
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_a
    const-string v2, "3"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method

.method public static playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/TabsVideoSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "source"    # Lcom/youku/vo/TabsVideoSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iid"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 678
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    if-eqz p3, :cond_2

    .line 682
    sget-object v3, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    invoke-static {p0, p3, v3, p2}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_2
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->play_mode:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 686
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->aid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 687
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->aid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    invoke-static {p0, v3, v4, p2}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v2, p1, Lcom/youku/vo/TabsVideoSource;->play_mode:Ljava/lang/String;

    .line 691
    .local v2, "playMode":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 692
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 693
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->url:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 695
    :cond_4
    const-string/jumbo v3, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_5
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 700
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p1, Lcom/youku/vo/TabsVideoSource;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 702
    .local v1, "it":Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    .end local v1    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "\u89c6\u9891\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 709
    iget-object v3, p1, Lcom/youku/vo/TabsVideoSource;->aid:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    invoke-static {p0, v3, v4, p2}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_7
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static putData()V
    .locals 3

    .prologue
    .line 1038
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    const-string v1, "0-10"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    const-string v1, "10-30"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    const-string v1, "30-60"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->T:Ljava/util/HashMap;

    const-string v1, "60-0"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->D:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->D:Ljava/util/HashMap;

    const-string v1, "6"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "97"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "96"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "85"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "100"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "95"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "87"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "86"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "92"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "98"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "104"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "105"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "99"

    const-string v2, "12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "88"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "94"

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "84"

    const-string v2, "22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "89"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "90"

    const-string v2, "24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "91"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "93"

    const-string v2, "26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "101"

    const-string v2, "27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/tudou/ui/fragment/SearchManager;->S:Ljava/util/HashMap;

    const-string v1, "103"

    const-string v2, "28"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    return-void
.end method

.method private static setHotShow(Landroid/support/v4/app/FragmentManager;I)V
    .locals 3
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "visible"    # I

    .prologue
    .line 992
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .line 994
    .local v0, "hot":Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    if-eqz v0, :cond_1

    .line 995
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotRoot:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 997
    :cond_0
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 998
    iget-object v1, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1001
    :cond_1
    return-void
.end method

.method public static setOtherSiteData(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    sput-object v3, Lcom/tudou/ui/fragment/SearchManager;->other_site_ids:[I

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/ui/fragment/SearchManager;->other_site_names:[Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 598
    .local v2, "mTypedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 599
    .local v1, "length":I
    new-array v3, v1, [I

    sput-object v3, Lcom/tudou/ui/fragment/SearchManager;->other_site_resids:[I

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 601
    sget-object v3, Lcom/tudou/ui/fragment/SearchManager;->other_site_resids:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 604
    return-void
.end method

.method private setUGCData()V
    .locals 5

    .prologue
    .line 518
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 519
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->items:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v1, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->items:Ljava/util/ArrayList;

    .line 522
    .local v1, "tempUgcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 523
    .local v2, "ugcSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 524
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->sort:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->sort:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->sort:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    .line 531
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->filter:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->filter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao;->wirelessSearchResult:Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;

    iget-object v3, v3, Lcom/youku/vo/SearchUgcDao$WirelessSearchResult;->filter:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcFilters:Ljava/util/ArrayList;

    .line 539
    .end local v0    # "i":I
    .end local v1    # "tempUgcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    .end local v2    # "ugcSize":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addPodcastAttention(Lcom/youku/vo/SokuPodcast$User;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 10
    .param p1, "user"    # Lcom/youku/vo/SokuPodcast$User;
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager;->context:Landroid/app/Activity;

    iget v2, p1, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/SokuPodcast$User;->userpicurl:Ljava/lang/String;

    iget-object v4, p1, Lcom/youku/vo/SokuPodcast$User;->uploadCount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p1, Lcom/youku/vo/SokuPodcast$User;->isVuser:Z

    iget-object v6, p1, Lcom/youku/vo/SokuPodcast$User;->nickname:Ljava/lang/String;

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/youku/vo/SokuPodcast$User;->lut:Ljava/lang/String;

    move-object v9, p2

    invoke-interface/range {v0 .. v9}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Lcom/tudou/service/attention/IAttention$CallBack;)V

    .line 880
    return-void
.end method

.method public addVideoAttention(Lcom/youku/vo/SearchDirectDaoShowItem;Lcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 9
    .param p1, "show"    # Lcom/youku/vo/SearchDirectDaoShowItem;
    .param p2, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager;->context:Landroid/app/Activity;

    iget-object v2, p1, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/vo/SearchDirectDaoShowItem;->vimg:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/youku/vo/SearchDirectDaoShowItem;->title:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 886
    return-void
.end method

.method public cancelAttention(Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/tudou/service/attention/IAttention$CallBack;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager;->context:Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    .line 893
    return-void
.end method

.method public checkAttentions(Lcom/youku/vo/SokuPodcast;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
    .locals 5
    .param p1, "result"    # Lcom/youku/vo/SokuPodcast;
    .param p2, "icheck"    # Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;

    .prologue
    .line 827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SokuPodcast$User;

    iget v3, v3, Lcom/youku/vo/SokuPodcast$User;->userId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 834
    :cond_1
    invoke-interface {p2, p1}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishChannel(Lcom/youku/vo/SokuPodcast;)V

    .line 874
    :goto_1
    return-void

    .line 837
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    new-instance v4, Lcom/tudou/ui/fragment/SearchManager$7;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/ui/fragment/SearchManager$7;-><init>(Lcom/tudou/ui/fragment/SearchManager;Lcom/youku/vo/SokuPodcast;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V

    invoke-interface {v3, v2, v1, v4}, Lcom/tudou/service/attention/IAttention;->isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    goto :goto_1
.end method

.method public checkAttentions(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V
    .locals 5
    .param p2, "icheck"    # Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;",
            "Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;",
            ")V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 761
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    .line 762
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->is_tudou:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 770
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 775
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 776
    :cond_3
    invoke-interface {p2, p1}, Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;->onFinishVideo(Ljava/util/ArrayList;)V

    .line 820
    :goto_2
    return-void

    .line 779
    :cond_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->iatttention:Lcom/tudou/service/attention/IAttention;

    new-instance v4, Lcom/tudou/ui/fragment/SearchManager$6;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/ui/fragment/SearchManager$6;-><init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V

    invoke-interface {v3, v2, v1, v4}, Lcom/tudou/service/attention/IAttention;->isAttention(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    goto :goto_2
.end method

.method public excueGetHotWords(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 475
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    :goto_0
    return-void

    .line 478
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 480
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getHotWordsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SearchManager$4;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/SearchManager$4;-><init>(Lcom/tudou/ui/fragment/SearchManager;Landroid/os/Handler;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public excueGetIcons()V
    .locals 4

    .prologue
    .line 438
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    :goto_0
    return-void

    .line 441
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 443
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->searchIcon()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SearchManager$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SearchManager$3;-><init>(Lcom/tudou/ui/fragment/SearchManager;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public excueGetShow(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isnoqc"    # Z
    .param p3, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 261
    const-string v2, "excueGetShow"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 270
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 271
    const-string/jumbo v2, "\u641c\u7d22\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 274
    :cond_2
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 276
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->searchShow(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 278
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SearchManager$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchManager$1;-><init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pg"    # I
    .param p3, "ob"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "showLoading"    # Z
    .param p6, "isnoqc"    # Z
    .param p7, "keytype"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 376
    iput p2, p0, Lcom/tudou/ui/fragment/SearchManager;->page:I

    .line 377
    iget-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->correntUgcWord:Ljava/lang/String;

    .line 378
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne p2, v6, :cond_0

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "refercode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "search|resultFilter||key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v3, "\u7ed3\u679c\u7b5b\u9009"

    const-class v4, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u641c\u7d22\u9875-\u7b5b\u9009"

    invoke-static {v3, v4, v5, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 385
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 387
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2, p3, p4, p6}, Lcom/youku/http/TudouURLContainer;->searchUGC(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/SearchManager$2;

    invoke-direct {v3, p0, p2, p3}, Lcom/tudou/ui/fragment/SearchManager$2;-><init>(Lcom/tudou/ui/fragment/SearchManager;ILjava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 432
    return-void
.end method

.method public excueGetUgc(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "loading"    # Z
    .param p3, "isnoqc"    # Z
    .param p4, "keyType"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-boolean p3, p0, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    .line 365
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->correntUgcWord:Ljava/lang/String;

    .line 366
    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 367
    return-void
.end method

.method public excueSuggestWords(Ljava/lang/String;Landroid/os/Handler;J)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suggestHandler"    # Landroid/os/Handler;
    .param p3, "time"    # J

    .prologue
    .line 721
    if-nez p2, :cond_0

    .line 750
    :goto_0
    return-void

    .line 723
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v8, "tempWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v1, Lcom/youku/network/IHttpRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/network/IHttpRequest;

    .line 726
    .local v7, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getSuggestWordsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    move-object v3, p1

    .line 729
    .local v3, "temp":Ljava/lang/String;
    new-instance v1, Lcom/tudou/ui/fragment/SearchManager$5;

    move-object v2, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tudou/ui/fragment/SearchManager$5;-><init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/lang/String;JLandroid/os/Handler;)V

    invoke-interface {v7, v0, v1}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getAccountRecommend(Landroid/os/Handler;)V
    .locals 5
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 1270
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1273
    :cond_0
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1274
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getAccountRecommend()Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "recommend_url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/SearchManager$9;

    invoke-direct {v3, p0, p1}, Lcom/tudou/ui/fragment/SearchManager$9;-><init>(Lcom/tudou/ui/fragment/SearchManager;Landroid/os/Handler;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/youku/adapter/SearchResultAdapter;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    return-object v0
.end method

.method public getCateIds()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "cateIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 139
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v9, v9, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 140
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 141
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v9, v9, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v9, v9, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    .line 142
    iput-object v12, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    .line 143
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    .line 170
    :goto_1
    return-object v9

    .line 145
    :cond_0
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v9, v9, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v9, v9, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    invoke-direct {p0, v9}, Lcom/tudou/ui/fragment/SearchManager;->getCateByCateId(I)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 147
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 148
    .local v7, "n":I
    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v7    # "n":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 153
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 154
    const-string/jumbo v9, "\u5168\u90e8"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 162
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 166
    .restart local v5    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 167
    .local v8, "val":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "cate":Ljava/lang/String;
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    .end local v0    # "cate":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "val":I
    :cond_3
    iput-object v12, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    .line 157
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 170
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public getDirectDao()Lcom/youku/vo/SearchDirectDao;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend(Landroid/os/Handler;Z)V
    .locals 5
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "fromSearch"    # Z

    .prologue
    .line 1178
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1179
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1180
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1185
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getRecommend()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "recommend_url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/SearchManager$8;

    invoke-direct {v3, p0, p2, p1}, Lcom/tudou/ui/fragment/SearchManager$8;-><init>(Lcom/tudou/ui/fragment/SearchManager;ZLandroid/os/Handler;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getResultByCateId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "cate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchManager;->getCateIdByCate(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "cateId":I
    if-nez v0, :cond_2

    .line 176
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v2, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    .line 188
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 181
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v2, "resultByCate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    if-ne v3, v0, :cond_3

    .line 185
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;
    .locals 4
    .param p1, "ct"    # I
    .param p2, "pos"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1112
    new-instance v0, Lcom/youku/vo/SokuClick;

    invoke-direct {v0}, Lcom/youku/vo/SokuClick;-><init>()V

    .line 1113
    .local v0, "click":Lcom/youku/vo/SokuClick;
    sget-object v1, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 1115
    :cond_0
    sget-object v1, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->aaid:Ljava/lang/String;

    .line 1116
    sparse-switch p1, :sswitch_data_0

    .line 1139
    const-string v1, ""

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    .line 1142
    :goto_0
    if-nez p1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->ct:Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->ds:Ljava/lang/String;

    .line 1147
    :goto_2
    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v1, :cond_6

    .line 1148
    sget-object v1, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_4

    .line 1149
    const-string v1, "0"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    .line 1159
    :cond_1
    :goto_3
    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-eqz v1, :cond_7

    .line 1160
    sget-object v1, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchManager;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->filter:Ljava/lang/String;

    .line 1164
    :goto_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->k:Ljava/lang/String;

    .line 1165
    iget v1, p0, Lcom/tudou/ui/fragment/SearchManager;->page:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->pg:Ljava/lang/String;

    .line 1166
    const-string v1, ""

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->pid:Ljava/lang/String;

    .line 1167
    const-string v1, ""

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->pname:Ljava/lang/String;

    .line 1168
    iput-object p2, v0, Lcom/youku/vo/SokuClick;->pos:Ljava/lang/String;

    .line 1169
    iput-object p3, v0, Lcom/youku/vo/SokuClick;->type:Ljava/lang/String;

    .line 1170
    sget-object v1, Lcom/tudou/ui/fragment/SearchManager;->modeurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->url:Ljava/lang/String;

    .line 1171
    sget-object v1, Lcom/tudou/ui/fragment/SearchManager;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->vid:Ljava/lang/String;

    .line 1172
    iget v1, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->vs:Ljava/lang/String;

    .line 1173
    return-object v0

    .line 1118
    :sswitch_0
    const-string v1, "1"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto :goto_0

    .line 1121
    :sswitch_1
    const-string v1, "2"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto :goto_0

    .line 1124
    :sswitch_2
    const-string v1, "3"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto :goto_0

    .line 1127
    :sswitch_3
    const-string v1, "4"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto :goto_0

    .line 1130
    :sswitch_4
    const-string v1, "6"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1133
    :sswitch_5
    const-string v1, "19"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1136
    :sswitch_6
    const-string v1, "15"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1142
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 1146
    :cond_3
    const-string v1, "0"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->ds:Ljava/lang/String;

    goto :goto_2

    .line 1150
    :cond_4
    const-string/jumbo v1, "total_pv"

    sget-object v2, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    const-string v1, "1"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    goto :goto_3

    .line 1152
    :cond_5
    const-string v1, "createtime"

    sget-object v2, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    const-string v1, "2"

    iput-object v1, v0, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    goto/16 :goto_3

    .line 1157
    :cond_6
    iput-object v3, v0, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    goto/16 :goto_3

    .line 1162
    :cond_7
    iput-object v3, v0, Lcom/youku/vo/SokuClick;->filter:Ljava/lang/String;

    goto :goto_4

    .line 1116
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x11 -> :sswitch_6
    .end sparse-switch
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
    .line 564
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdapter(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/youku/adapter/SearchResultAdapter;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    .line 587
    return-void
.end method

.method public setDirectDao(Lcom/youku/vo/SearchDirectDao;)V
    .locals 2
    .param p1, "directDao"    # Lcom/youku/vo/SearchDirectDao;

    .prologue
    .line 576
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    .line 578
    :cond_0
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->directDao:Lcom/youku/vo/SearchDirectDao;

    .line 579
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->handler:Landroid/os/Handler;

    .line 561
    return-void
.end method

.method public setKey(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isnoqc"    # Z
    .param p3, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchManager;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchManager;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchManager;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/SearchManager;->setDirectDao(Lcom/youku/vo/SearchDirectDao;)V

    .line 549
    iput-object v2, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcDao:Lcom/youku/vo/SearchUgcDao;

    .line 551
    :cond_0
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->key:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager;->key:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/tudou/ui/fragment/SearchManager;->excueGetShow(Ljava/lang/String;ZLjava/lang/String;)V

    .line 553
    return-void
.end method

.method public setUgcItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "ugcItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager;->ugcItems:Ljava/util/ArrayList;

    .line 569
    return-void
.end method
