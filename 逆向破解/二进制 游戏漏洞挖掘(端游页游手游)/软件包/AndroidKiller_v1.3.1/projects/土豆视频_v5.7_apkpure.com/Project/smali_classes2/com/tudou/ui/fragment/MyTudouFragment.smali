.class public Lcom/tudou/ui/fragment/MyTudouFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ADAPTER_TAG0:I = -0x1

.field public static final ADAPTER_TAG1:I = 0x1

.field public static final ADAPTER_TAG2:I = 0x2

.field public static final ADAPTER_TAG3:I = 0x3

.field private static final GET_DOWNLOADED_DONE:I = 0x403

.field private static final MESSAGE_GONE:I = 0x4

.field private static final MESSAGE_VISBILE:I = 0x3

.field private static final SET_PROGRESS:I = 0x404

.field private static final USERINFO_FAILED:I = 0x2

.field private static final USERINFO_SUCESS:I = 0x1

.field public static mIsInUpload:Z

.field public static mLoginRefresh:Z

.field public static mNeedToRefresh:Z

.field private static mUserInfo:Lcom/youku/vo/UserInfo;


# instance fields
.field adapterTag:I

.field allSelectListener:Landroid/view/View$OnClickListener;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

.field private cacheHeaderRel:Landroid/widget/RelativeLayout;

.field private cacheHeaderText:Landroid/widget/TextView;

.field cacheOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private cacheRelBottom:Landroid/widget/RelativeLayout;

.field private cachedEditLl:Landroid/widget/LinearLayout;

.field private cachedEditTxt:Landroid/widget/TextView;

.field public cachedEmpty:Z

.field private cachingCount:Landroid/widget/TextView;

.field public cachingEmpty:Z

.field delSelectListener:Landroid/view/View$OnClickListener;

.field private deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

.field private download:Lcom/tudou/service/download/DownloadManager;

.field private downloadNone:Landroid/widget/RelativeLayout;

.field private downloadedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedList_Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadedList_show:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fActvity:Lcom/tudou/ui/activity/HomePageActivity;

.field goLocalVideo:Landroid/view/View$OnClickListener;

.field public handler:Landroid/os/Handler;

.field public havedownloading:Z

.field private height:I

.field private isEdit:Z

.field private mButtonsWrapper:Landroid/view/View;

.field private mCollectView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderWrapper:Landroid/view/View;

.field private mHistoryView:Landroid/view/View;

.field private mImgMessage:Landroid/view/View;

.field private mImgSetting:Landroid/view/View;

.field private mImgV:Landroid/widget/ImageView;

.field private mImgWhiteLine:Landroid/widget/TextView;

.field private mImgeUser:Landroid/widget/ImageView;

.field private mLoginView:Landroid/view/View;

.field private mMainListView:Landroid/widget/ListView;

.field private mMyHandler:Landroid/os/Handler;

.field private mPlaceHolderView:Landroid/view/View;

.field private mTopLayout:Landroid/view/View;

.field private mTopTransparent:Landroid/view/View;

.field private mTxtAboutMyself:Landroid/widget/TextView;

.field private mTxtNickName:Landroid/widget/TextView;

.field private mTxtPlayCount:Landroid/widget/TextView;

.field private mTxtUploadCount:Landroid/widget/TextView;

.field private mUploadView:Landroid/view/View;

.field private mUserInfoView:Landroid/view/View;

.field private mVipView:Landroid/view/View;

.field private mssageIcon:Landroid/widget/ImageView;

.field private mytudou:Landroid/view/View;

.field onBackListener:Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;

.field onEditListener:Landroid/view/View$OnClickListener;

.field onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

.field private popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

.field private progressBar:Lcom/youku/widget/CachePageProgressBar;

.field private scrolledX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 146
    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginRefresh:Z

    .line 193
    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mIsInUpload:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    .line 158
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->havedownloading:Z

    .line 172
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEmpty:Z

    .line 173
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachingEmpty:Z

    .line 185
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit:Z

    .line 191
    invoke-static {}, Lcom/youku/util/DeleteAbleItemList;->getInstance()Lcom/youku/util/DeleteAbleItemList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    .line 198
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$1;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$2;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onBackListener:Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;

    .line 236
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$3;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

    .line 244
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$4;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onEditListener:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$5;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->handler:Landroid/os/Handler;

    .line 615
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$9;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    .line 972
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$12;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->allSelectListener:Landroid/view/View$OnClickListener;

    .line 1027
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$13;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$13;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->delSelectListener:Landroid/view/View$OnClickListener;

    .line 1109
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$18;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$18;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1717
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$22;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$22;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->goLocalVideo:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->storeProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/widget/CacheDeletePopUpWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/MyTudouFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->scrolledX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/MyTudouFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->scrolledX:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/MyTudouFragment;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setProgressBar(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onScrollChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/youku/vo/UserInfo;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUserInfo:Lcom/youku/vo/UserInfo;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/youku/vo/UserInfo;)Lcom/youku/vo/UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/UserInfo;

    .prologue
    .line 98
    sput-object p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUserInfo:Lcom/youku/vo/UserInfo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setLoginUi()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setUserInfo(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mssageIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setVipTitle()V

    return-void
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setNoVipTitle()V

    return-void
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteSelectedItems()V

    return-void
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/service/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->download:Lcom/tudou/service/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->initData(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/MyTudouFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->onEidtSelect(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/tudou/ui/fragment/MyTudouFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTudouFragment;->onNoEeitSelect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->judgeAdapterTag(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MyTudouFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCacheHeader(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/adapter/CacheListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTudouFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapterNotifty()V

    return-void
.end method

.method private addOrRemoveAllIngs()V
    .locals 3

    .prologue
    .line 1259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/youku/util/DeleteAbleItemList;->removeItem(Lcom/tudou/service/download/DownloadInfo;)V

    .line 1259
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1263
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_1

    .line 1266
    :cond_1
    return-void
.end method

.method private cacheAdapterNotifty()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CacheListAdapter;->notifyDataSetChanged()V

    .line 1024
    return-void
.end method

.method private checkMessage()V
    .locals 3

    .prologue
    .line 1368
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    .line 1370
    .local v0, "msgManager":Lcom/youku/util/MessageManager;
    new-instance v1, Lcom/tudou/ui/fragment/MyTudouFragment$20;

    invoke-direct {v1, p0, v0}, Lcom/tudou/ui/fragment/MyTudouFragment$20;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;Lcom/youku/util/MessageManager;)V

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->getRefreshCount(Lcom/youku/util/IMessageFinish;)V

    .line 1392
    .end local v0    # "msgManager":Lcom/youku/util/MessageManager;
    :goto_0
    return-void

    .line 1389
    :cond_0
    invoke-static {}, Lcom/youku/util/MessageManager;->clearMessage()V

    .line 1390
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private deleteSelected()V
    .locals 3

    .prologue
    .line 1045
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4eb2\uff0c\u786e\u8ba4\u5220\u9664\u7f13\u5b58\u8bb0\u5f55\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/fragment/MyTudouFragment$16;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$16;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/ui/fragment/MyTudouFragment$15;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$15;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/MyTudouFragment$14;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$14;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1065
    return-void
.end method

.method private deleteSelectedItems()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->showNoLimit(Landroid/content/Context;)V

    .line 1070
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1071
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$17;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyTudouFragment$17;->start()V

    .line 1107
    :cond_0
    return-void
.end method

.method private getHeadWrapperHeitht()I
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getUserInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 566
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "userUrl":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 568
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->getLocalJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "localJson":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 609
    .end local v2    # "localJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 572
    .restart local v2    # "localJson":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 574
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 579
    .end local v2    # "localJson":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 580
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 582
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 584
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v5, Lcom/tudou/ui/fragment/MyTudouFragment$8;

    invoke-direct {v5, p0, v4}, Lcom/tudou/ui/fragment/MyTudouFragment$8;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private goInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 1190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1191
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|dlAlbum"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5267\u96c6\u6587\u4ef6\u5939"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1194
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1195
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1196
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1197
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1205
    :goto_0
    return-void

    .line 1200
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1201
    .restart local v1    # "mIntent":Landroid/content/Intent;
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1202
    const-string v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goPlayer(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1159
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 1162
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1163
    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->goInner(Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_1
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->hasFree(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1167
    const-string v2, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u64ad\u653e\u7f13\u5b58\u89c6\u9891\u3002"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1171
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|downloadedVideoClick"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string v2, "\u7f13\u5b58\u9875\u5df2\u7f13\u5b58\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7f13\u5b58\u9875-\u7f13\u5b58\u5b8c\u6210\u5217\u8868\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1174
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1175
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->refresh(Z)V

    .line 1176
    const v2, 0x7f0d0126

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1179
    :cond_3
    iget v2, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, v1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    mul-int/lit16 v3, v3, 0x3e8

    const v4, 0xea60

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    .line 1180
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1183
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goLocalPlayerWithPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private static goVipBuyActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 1697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1698
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1699
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1700
    return-void
.end method

.method private static goVipPrivilegeActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 1691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1692
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/VipPrivilegeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1693
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1694
    return-void
.end method

.method private hasFree(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v2, 0x0

    .line 1742
    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v4, "/tudou/offlinedata/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1743
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 1744
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return v2

    .line 1746
    :cond_1
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1748
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initCacheHeader(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    const v0, 0x7f0c0aec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheHeaderRel:Landroid/widget/RelativeLayout;

    .line 401
    const v0, 0x7f0c0aed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheHeaderText:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f0c0aee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachingCount:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f0c0af1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditTxt:Landroid/widget/TextView;

    .line 404
    const v0, 0x7f0c0aef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachingCount:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onEditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-void
.end method

.method private declared-synchronized initData(Z)V
    .locals 17
    .param p1, "updata"    # Z

    .prologue
    .line 1395
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->download:Lcom/tudou/service/download/DownloadManager;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/tudou/service/download/DownloadManager;->getDownloadedList(Z)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedInfos:Ljava/util/ArrayList;

    .line 1396
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    if-nez v15, :cond_0

    .line 1397
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    .line 1400
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->download:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v10

    .line 1401
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    if-eqz v10, :cond_2

    .line 1402
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1403
    .local v9, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1404
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1405
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1395
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1399
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1407
    .restart local v9    # "iter":Ljava/util/Iterator;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_1
    const/4 v15, 0x0

    sput-boolean v15, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 1408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1410
    .end local v9    # "iter":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 1412
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/service/download/DownloadInfo;

    .line 1413
    .local v7, "info":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v7}, Lcom/tudou/service/download/DownloadInfo;->getShowid()Ljava/lang/String;

    move-result-object v12

    .line 1414
    .local v12, "showId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1418
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v7}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1422
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1423
    .local v2, "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    invoke-virtual {v15, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1428
    .end local v2    # "downloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .end local v7    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v12    # "showId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    .line 1429
    .local v13, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1430
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v15, 0x0

    sput-boolean v15, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 1431
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1433
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1435
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_8
    const/4 v15, 0x0

    sput-boolean v15, Lcom/tudou/service/download/DownloadInfo;->compareBySeq:Z

    .line 1436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1438
    const/4 v1, 0x0

    .line 1439
    .local v1, "downingcount":I
    const/4 v14, 0x0

    .line 1440
    .local v14, "waitcount":I
    const/4 v11, 0x0

    .line 1441
    .local v11, "pausecount":I
    const/4 v4, 0x0

    .line 1442
    .local v4, "errcount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_e

    .line 1443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    if-nez v15, :cond_a

    .line 1445
    add-int/lit8 v1, v1, 0x1

    .line 1442
    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1446
    :cond_a
    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_b

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_b

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    move/from16 v0, v16

    if-ne v0, v15, :cond_c

    .line 1452
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1453
    :cond_c
    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/tudou/service/download/DownloadInfo;->getState()I

    move-result v15

    move/from16 v0, v16

    if-ne v0, v15, :cond_9

    .line 1455
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadingInfos:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tudou/service/download/DownloadInfo;

    iget v15, v15, Lcom/tudou/service/download/DownloadInfo;->exceptionId:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1456
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1458
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1461
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v15, v14}, Lcom/youku/adapter/CacheListAdapter;->setWaitcount(I)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v15, v11}, Lcom/youku/adapter/CacheListAdapter;->setPausecount(I)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v15, v1}, Lcom/youku/adapter/CacheListAdapter;->setDowningcount(I)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v15, v4}, Lcom/youku/adapter/CacheListAdapter;->setErrorcount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1465
    monitor-exit p0

    return-void
.end method

.method private initHeaderView()V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030246

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderView:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c0b04

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopTransparent:Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c0b05

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mPlaceHolderView:Landroid/view/View;

    .line 480
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/MyTudouFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$6;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 499
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    new-instance v1, Lcom/tudou/ui/fragment/MyTudouFragment$7;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$7;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 516
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 517
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->initCacheHeader(Landroid/view/View;)V

    .line 412
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0568

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheRelBottom:Landroid/widget/RelativeLayout;

    .line 414
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c056a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadNone:Landroid/widget/RelativeLayout;

    .line 416
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/CachePageProgressBar;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    .line 419
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0569

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    .line 421
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c056b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderWrapper:Landroid/view/View;

    .line 422
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c056c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mButtonsWrapper:Landroid/view/View;

    .line 423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const-string v1, "M351"

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 427
    .local v0, "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getHeadWrapperHeitht()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 428
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v0    # "rLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c04ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginView:Landroid/view/View;

    .line 432
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0af7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUserInfoView:Landroid/view/View;

    .line 433
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0585

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    .line 434
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0af8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    .line 435
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0af9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtUploadCount:Landroid/widget/TextView;

    .line 436
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0afa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgWhiteLine:Landroid/widget/TextView;

    .line 437
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0830

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtPlayCount:Landroid/widget/TextView;

    .line 438
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c043f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgV:Landroid/widget/ImageView;

    .line 439
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0afb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtAboutMyself:Landroid/widget/TextView;

    .line 441
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopLayout:Landroid/view/View;

    .line 446
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0af4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    .line 447
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0af5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgMessage:Landroid/view/View;

    .line 448
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mssageIcon:Landroid/widget/ImageView;

    .line 449
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0afd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHistoryView:Landroid/view/View;

    .line 450
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0aff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mCollectView:Landroid/view/View;

    .line 451
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0b00

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUploadView:Landroid/view/View;

    .line 452
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    const v2, 0x7f0c0b02

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mVipView:Landroid/view/View;

    .line 453
    return-void
.end method

.method private judgeAdapterTag(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "edInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .local p2, "ingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v0, -0x1

    .line 347
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const/4 v0, 0x3

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 352
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 353
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private onCollectClick()V
    .locals 4

    .prologue
    .line 1642
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1643
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 1645
    :cond_0
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u6536\u85cf\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684\u6536\u85cf"

    const-string v3, "myChannel|myFavorite"

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1647
    .local v0, "gofav":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1648
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1649
    return-void
.end method

.method private onEidtSelect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1208
    iget v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    packed-switch v0, :pswitch_data_0

    .line 1228
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setDeleteBtnCount()V

    .line 1230
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapterNotifty()V

    .line 1231
    return-void

    .line 1210
    :pswitch_0
    if-ne p1, v1, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    const-class v3, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1216
    :pswitch_1
    if-lt p1, v1, :cond_0

    .line 1217
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onItemEditSelect(I)V

    goto :goto_0

    .line 1220
    :pswitch_2
    if-ne p1, v1, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    const-class v3, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1224
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 1225
    add-int/lit8 v0, p1, -0x2

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onItemEditSelect(I)V

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onHistoryClick()V
    .locals 4

    .prologue
    .line 1629
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1630
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 1632
    :cond_0
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u5386\u53f2\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u89c2\u770b\u8bb0\u5f55"

    const-string v3, "myChannel|history"

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1634
    .local v0, "gohistory":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1635
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1636
    return-void
.end method

.method private onItemEditSelect(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1272
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_show:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/download/DownloadInfo;

    .line 1273
    .local v0, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1274
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1276
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1277
    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->removeItem(Lcom/tudou/service/download/DownloadInfo;)V

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    .end local v1    # "j":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->removeItem(Lcom/tudou/service/download/DownloadInfo;)V

    .line 1296
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1297
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v3, v3, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1298
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v3, v3, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const-string v4, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    :goto_2
    return-void

    .line 1283
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1284
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadedList_Map:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1285
    .restart local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1286
    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->containsItem(Lcom/tudou/service/download/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1287
    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    .line 1285
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1291
    .end local v1    # "j":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v3, v0}, Lcom/youku/util/DeleteAbleItemList;->addItems(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_1

    .line 1300
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v3, v3, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1301
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v3, v3, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const-string v4, "\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private onMessageClick()V
    .locals 5

    .prologue
    .line 1598
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mssageIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mssageIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1600
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1601
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "refercode"

    const-string v3, "myChannel|Message"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1603
    const-string v2, "\u6211\u7684\u9875\u6d88\u606f\u4e2d\u5fc3\u70b9\u51fb\uff08\u5df2\u767b\u5f55\uff09"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684-\u6d88\u606f"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1609
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1610
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/MessageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1611
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1612
    return-void

    .line 1606
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "\u6211\u7684\u9875\u6d88\u606f\u4e2d\u5fc3\u70b9\u51fb\uff08\u672a\u767b\u5f55\uff09"

    const-class v3, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684-\u6d88\u606f"

    invoke-static {v2, v3, v4, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private onMoreClick()V
    .locals 4

    .prologue
    .line 1618
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u8bbe\u7f6e\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684-\u8bbe\u7f6e"

    const-string v3, "myChannel|settings"

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1620
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/MoreActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1621
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1622
    return-void
.end method

.method private onNoEeitSelect(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 1123
    const-string v1, "MyTudouFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v1, "MyTudouFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v1, "goPlayLocal"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->adapterTag:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1129
    :pswitch_0
    if-ne p1, v5, :cond_0

    .line 1130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1131
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    const-string v2, "myChannel|downloading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v1, "\u6b63\u5728\u7f13\u5b58\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u9875-\u6b63\u5728\u7f13\u5b58\u6587\u4ef6"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1134
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    const-class v4, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1139
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    if-lt p1, v5, :cond_0

    .line 1140
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->goPlayer(I)V

    goto :goto_0

    .line 1143
    :pswitch_2
    if-ne p1, v5, :cond_2

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1145
    .restart local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    const-string v2, "myChannel|downloading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v1, "\u6b63\u5728\u7f13\u5b58\u6587\u4ef6\u5939\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u9875-\u6b63\u5728\u7f13\u5b58\u6587\u4ef6"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1148
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    const-class v4, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1151
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-le p1, v5, :cond_0

    .line 1152
    add-int/lit8 v1, p1, -0x2

    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->goPlayer(I)V

    goto :goto_0

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onScrollChanged()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 521
    const-string v6, "M351"

    sget-object v7, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 528
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_1

    move v3, v5

    .line 529
    .local v3, "top":I
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 530
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderWrapper:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 532
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_2

    .line 534
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 536
    .local v2, "stickyRemove":I
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stickyRemove====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",===top==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->removeY(Landroid/view/View;I)V

    .line 539
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderWrapper:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->removeY(Landroid/view/View;I)V

    goto :goto_0

    .line 528
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "stickyRemove":I
    .end local v3    # "top":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_1

    .line 541
    .restart local v1    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "top":I
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {p0, v6, v5}, Lcom/tudou/ui/fragment/MyTudouFragment;->removeY(Landroid/view/View;I)V

    .line 542
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getHeadWrapperHeitht()I

    move-result v0

    .line 543
    .local v0, "hHeight":I
    iget-object v5, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHeaderWrapper:Landroid/view/View;

    neg-int v6, v0

    invoke-virtual {p0, v5, v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->removeY(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private onUploadClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1655
    sput-boolean v4, Lcom/tudou/ui/fragment/MyTudouFragment;->mIsInUpload:Z

    .line 1656
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u4e0a\u4f20\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u6211\u7684\u4e0a\u4f20"

    const-string v3, "myChannel|myUpload"

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1658
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1659
    sput-boolean v4, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 1660
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1661
    return-void
.end method

.method private onUserClick()V
    .locals 4

    .prologue
    .line 1584
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1587
    :cond_0
    const-string v1, "\u6211\u7684\u7a7a\u95f4\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string v2, "\u767b\u5f55"

    const-string v3, "myChannel|login"

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1589
    .local v0, "goLoginIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1590
    const-string v1, "TAG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static onVipClick(Landroid/app/Activity;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 1677
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 1678
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    iget-boolean v1, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v1, :cond_0

    .line 1680
    invoke-static {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->goVipPrivilegeActivity(Landroid/app/Activity;)V

    .line 1688
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-static {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->goVipBuyActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1685
    :cond_1
    invoke-static {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->goVipBuyActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private registBroadCastReciver()V
    .locals 3

    .prologue
    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "com.tudou.service.download.ACTION_SDCARD_PATH_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/ui/activity/HomePageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method private setCacheHeader(II)V
    .locals 3
    .param p1, "adapterTag"    # I
    .param p2, "size"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 314
    packed-switch p1, :pswitch_data_0

    .line 343
    :goto_0
    :pswitch_0
    return-void

    .line 316
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheHeaderRel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCacheRelBottomH(Z)V

    .line 320
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setListViewHeight()V

    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadNone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCacheRelBottomH(Z)V

    .line 328
    invoke-direct {p0, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCachingHeader(I)V

    goto :goto_0

    .line 332
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCacheRelBottomH(Z)V

    .line 334
    invoke-direct {p0, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCachingHeader(I)V

    goto :goto_0

    .line 338
    :pswitch_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCacheRelBottomH(Z)V

    .line 340
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setCachedHeader()V

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setCacheRelBottomH(Z)V
    .locals 4
    .param p1, "showLocal"    # Z

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheRelBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1340
    .local v1, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .line 1341
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 1342
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a046e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1348
    :goto_0
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1349
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheRelBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    return-void

    .line 1345
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setCachedHeader()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadNone:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 958
    return-void
.end method

.method private setCachingHeader(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->downloadNone:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 969
    return-void
.end method

.method private setDeleteBtnCount()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1234
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v2}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1239
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1240
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v2, 0x7f0e00f3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1255
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1248
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1249
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v2, 0x7f0e00f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private setListViewHeight()V
    .locals 5

    .prologue
    .line 1327
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1329
    .local v2, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a035f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1331
    .local v0, "deletellH1":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0364

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1333
    .local v1, "deletellH2":I
    add-int v3, v0, v1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1334
    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    return-void
.end method

.method private setListViewHeight(ZLandroid/view/View;)V
    .locals 2
    .param p1, "canedit"    # Z
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1306
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1308
    .local v0, "linearParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    invoke-virtual {v1, p2}, Lcom/youku/widget/CacheDeletePopUpWindow;->show(Landroid/view/View;)V

    .line 1324
    :goto_0
    return-void

    .line 1320
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1321
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    invoke-virtual {v1}, Lcom/youku/widget/CacheDeletePopUpWindow;->dismiss()Z

    goto :goto_0
.end method

.method private setLoginUi()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 907
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 912
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 930
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setNoVipTitle()V

    .line 917
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    const v1, 0x7f020618

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 918
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 921
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtUploadCount:Landroid/widget/TextView;

    const-string v1, "\u89c6\u9891  0 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtPlayCount:Landroid/widget/TextView;

    const-string v1, "\u8ba2\u9605  0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtAboutMyself:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setNoVipTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 854
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 855
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 856
    return-void
.end method

.method private setProgressBar(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/Room;

    .line 310
    .local v0, "r":Lcom/youku/vo/Room;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->progressBar:Lcom/youku/widget/CachePageProgressBar;

    invoke-virtual {v1, v0}, Lcom/youku/widget/CachePageProgressBar;->setProgressBar(Lcom/youku/vo/Room;)V

    .line 311
    return-void
.end method

.method private setUserInfo(Z)V
    .locals 8
    .param p1, "isLoadVip"    # Z

    .prologue
    const/4 v7, 0x0

    .line 700
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    .line 704
    .local v1, "userBean":Lcom/youku/vo/UserBean;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 705
    .local v0, "lastImagUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgeUser:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/MyTudouFragment$10;

    invoke-direct {v6, p0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment$10;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;Lcom/youku/vo/UserBean;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 794
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-boolean v2, v1, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v2, :cond_4

    .line 796
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setVipTitle()V

    .line 800
    :goto_1
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getAbout_myself()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    sget-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginRefresh:Z

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    .line 802
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtAboutMyself:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :goto_2
    if-eqz p1, :cond_3

    .line 811
    sget-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginRefresh:Z

    if-nez v2, :cond_7

    .line 812
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v2

    new-instance v3, Lcom/tudou/ui/fragment/MyTudouFragment$11;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$11;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V

    .line 830
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtUploadCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89c6\u9891   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUploadCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtPlayCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8ba2\u9605  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getSubed_count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isVuser()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 834
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgV:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 798
    :cond_4
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setNoVipTitle()V

    goto :goto_1

    .line 804
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtAboutMyself:Landroid/widget/TextView;

    const-string v3, "\u7b80\u4ecb\uff1a\u8fd9\u4e2a\u4eba\u5f88\u61d2\uff0c\u4ec0\u4e48\u4e5f\u6ca1\u7559\u4e0b..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 807
    :cond_6
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtAboutMyself:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b80\u4ecb\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getAbout_myself()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 826
    :cond_7
    sput-boolean v7, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginRefresh:Z

    goto :goto_3

    .line 836
    :cond_8
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgV:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Lcom/youku/adapter/CacheListAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {v0, v1}, Lcom/youku/adapter/CacheListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    .line 457
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->allSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->delSelectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onSetEditListener:Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheListAdapter;->setOnSetEditListener(Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;)V

    .line 464
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHistoryView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mCollectView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUploadView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mVipView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    return-void
.end method

.method private setVipTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 842
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020a1b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 844
    .local v0, "drawableRight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 846
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 847
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0369

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 849
    .local v1, "padding":I
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTxtNickName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 850
    return-void
.end method

.method private storeProgress(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1468
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$21;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$21;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyTudouFragment$21;->start()V

    .line 1518
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1712
    const-class v0, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 1704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1705
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    const-class v1, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1709
    return-void
.end method


# virtual methods
.method public isEdit()Z
    .locals 1

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1558
    const-string v0, "allMyInfo"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 1561
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1562
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1563
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onMoreClick()V

    goto :goto_0

    .line 1564
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgMessage:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 1565
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onMessageClick()V

    goto :goto_0

    .line 1566
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mTopLayout:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 1567
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onUserClick()V

    goto :goto_0

    .line 1568
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mHistoryView:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 1569
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onHistoryClick()V

    goto :goto_0

    .line 1570
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mCollectView:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 1571
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onCollectClick()V

    goto :goto_0

    .line 1572
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mUploadView:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 1573
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onUploadClick()V

    goto :goto_0

    .line 1574
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mVipView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onVipClick()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->download:Lcom/tudou/service/download/DownloadManager;

    .line 368
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/HomePageActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    .line 374
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 375
    sput-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mIsInUpload:Z

    .line 376
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->onBackListener:Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;

    iput-object v1, v0, Lcom/tudou/ui/activity/HomePageActivity;->onBackListener:Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;

    .line 377
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->registBroadCastReciver()V

    .line 378
    const v0, 0x7f03012b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    .line 379
    new-instance v0, Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-direct {v0, v1}, Lcom/youku/widget/CacheDeletePopUpWindow;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    .line 380
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/youku/util/Util;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->height:I

    .line 381
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->initView()V

    .line 382
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->initHeaderView()V

    .line 383
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setViewListener()V

    .line 384
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mytudou:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 941
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 943
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 947
    :cond_0
    return-void
.end method

.method public onPageSelected()V
    .locals 2

    .prologue
    .line 1734
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 1735
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/CacheListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1739
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 935
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 936
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Util;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 861
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 862
    sget-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mIsInUpload:Z

    if-eqz v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 864
    :cond_0
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedToRefresh===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 866
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mImgSetting:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 868
    sget-boolean v0, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    if-eqz v0, :cond_3

    .line 869
    sput-boolean v4, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 870
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->setLoginUi()V

    .line 871
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    invoke-direct {p0, v4}, Lcom/tudou/ui/fragment/MyTudouFragment;->setUserInfo(Z)V

    .line 875
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getUserInfo()V

    .line 878
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->checkMessage()V

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 881
    iget v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->scrolledX:I

    if-eqz v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mMainListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->scrolledX:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 884
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/MyTudouFragment;->setListViewHeight(ZLandroid/view/View;)V

    .line 887
    invoke-virtual {p0, v3}, Lcom/tudou/ui/fragment/MyTudouFragment;->refresh(Z)V

    goto/16 :goto_0
.end method

.method public onVipClick()V
    .locals 3

    .prologue
    .line 1669
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1672
    :cond_0
    const-string v0, "\u4e2a\u4eba\u4e2d\u5fc3\u4f1a\u5458\u6807\u8bc6\u70b9\u51fb"

    const-string v1, "\u7279\u6743\u6309\u94ae"

    const-string v2, "myChannel|VipLog"

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->onVipClick(Landroid/app/Activity;)V

    .line 1674
    return-void
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "isshow"    # Z

    .prologue
    .line 1354
    if-eqz p1, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->showNoLimitTouchModel(Landroid/content/Context;)V

    .line 1356
    :cond_0
    new-instance v0, Lcom/tudou/ui/fragment/MyTudouFragment$19;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$19;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyTudouFragment$19;->start()V

    .line 1365
    return-void
.end method

.method public removeY(Landroid/view/View;I)V
    .locals 3
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "translationY"    # I

    .prologue
    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 550
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 555
    :goto_0
    return-void

    .line 552
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

.method public setEdit(ZLandroid/view/View;)V
    .locals 3
    .param p1, "isEdit"    # Z
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1525
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit:Z

    .line 1526
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapter:Lcom/youku/adapter/CacheListAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/adapter/CacheListAdapter;->setEditable(Z)V

    .line 1529
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->cacheAdapterNotifty()V

    .line 1531
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setListViewHeight(ZLandroid/view/View;)V

    .line 1532
    if-eqz p1, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->deleteAbleList:Lcom/youku/util/DeleteAbleItemList;

    invoke-virtual {v0}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    .line 1534
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1536
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1537
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->delButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v2, 0x7f0e00f4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1543
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->popUpWindow:Lcom/youku/widget/CacheDeletePopUpWindow;

    iget-object v0, v0, Lcom/youku/widget/CacheDeletePopUpWindow;->allButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1545
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditTxt:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    :goto_0
    return-void

    .line 1549
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment;->cachedEditTxt:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
