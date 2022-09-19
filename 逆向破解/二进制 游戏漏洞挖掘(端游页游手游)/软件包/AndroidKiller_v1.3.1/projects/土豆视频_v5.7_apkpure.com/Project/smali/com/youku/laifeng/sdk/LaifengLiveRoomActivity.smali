.class public Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.super Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;
    }
.end annotation


# static fields
.field private static final EXPRESSION_DOT_RES_ID_BASE:I = 0x1000

.field private static final START_LOOP_GET_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LaifengLiveRoomActivity"


# instance fields
.field private StreamUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bAPIServBind:Z

.field private bRestAPIServBind:Z

.field private getStarTask:Ljava/lang/Runnable;

.field private getStream:Ljava/lang/Runnable;

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private isEnter:Z

.field private isLiveHouse:Z

.field private isStarSending:Z

.field private mActorAvatar:Landroid/widget/ImageView;

.field private mActorExtraInfoLayout:Landroid/widget/LinearLayout;

.field private mActorLevel:Landroid/widget/ImageView;

.field private mActorName:Landroid/widget/TextView;

.field private mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

.field private mBackButton:Landroid/widget/ImageView;

.field private mBtnChatSend:Landroid/widget/Button;

.field private mBtnExpression:Landroid/widget/ImageView;

.field private mBtnStarSend:Landroid/widget/RelativeLayout;

.field private mCPS:Ljava/lang/String;

.field private mChatBg:Landroid/widget/LinearLayout;

.field private mChatListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

.field private mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

.field private mChatTabImage:Landroid/widget/ImageView;

.field private mChatTabText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionRestAPI:Landroid/content/ServiceConnection;

.field private mCookie:Ljava/lang/String;

.field private mDefaultDownloadUrl:Ljava/lang/String;

.field private mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field private mDisplay:Landroid/view/Display;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadClose:Landroid/widget/ImageView;

.field private mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

.field private mDownloadDlgListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

.field private mDownloadLayout:Landroid/widget/RelativeLayout;

.field private mDownloadProgressbar:Landroid/widget/ProgressBar;

.field private mDownloadRequest1:Lcom/youku/laifeng/sdk/download/DownloadRequest;

.field private mDownloadRequest2:Lcom/youku/laifeng/sdk/download/DownloadRequest;

.field private mDownloadRequestId1:I

.field private mDownloadRequestId2:I

.field private mDownloadSwitcher:Landroid/widget/ViewSwitcher;

.field private mEditFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mEditTouchListener:Landroid/view/View$OnTouchListener;

.field private mExitTime:J

.field private mExitToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

.field private mExpressionAdapter:Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;

.field private mExpressionContainer:Landroid/widget/LinearLayout;

.field private mExpressionListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

.field private mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

.field private mExpressionSelectDotIcon:[Landroid/widget/ImageView;

.field private mExpressionViewPager:Landroid/support/v4/view/ViewPager;

.field private mFollowButton:Landroid/widget/Button;

.field private mFollowNumberText:Landroid/widget/TextView;

.field private mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

.field private mGiftContainer:Landroid/widget/LinearLayout;

.field private mIMAddr:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mIsFollow:Z

.field private mLiveHouseChatContainer:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field private mNetworkListener:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

.field private mNetworkStatus:I

.field private mOnlineNumberLayout:Landroid/widget/LinearLayout;

.field private mOnlineNumberSlideView:Landroid/widget/ImageView;

.field private mOnlineNumberText:Landroid/widget/TextView;

.field private mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

.field private mPlayerContainer:Landroid/widget/LinearLayout;

.field private mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

.field private mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

.field private mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

.field private mRetryGetDownloadUrlCount:I

.field mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

.field private mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

.field private mSendBox:Landroid/widget/EditText;

.field private mSendStarButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/ImageView;

.field private mStarCountView:Landroid/widget/TextView;

.field private mStarCycleRunning:Z

.field private mStarFailToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

.field private mStarGet:I

.field private mStarGetMax:I

.field private mStarSuccessToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

.field private mTabContainer:Landroid/widget/LinearLayout;

.field private mTabPageAdapter:Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;

.field private mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

.field private mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

.field private mTitleView:Landroid/widget/TextView;

.field private mToolbarAnim:Landroid/view/animation/Animation;

.field private mToolbarContainer:Landroid/widget/LinearLayout;

.field private mUserArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

.field private mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

.field private mVideoContainer:Landroid/widget/RelativeLayout;

.field private mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

.field private mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

.field private mVoteBg:Landroid/widget/LinearLayout;

.field private mVoteTabImage:Landroid/widget/ImageView;

.field private mVoteTabText:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pManager:Landroid/os/PowerManager;

.field private receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

.field private startLoopGet:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;-><init>()V

    .line 166
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 167
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 168
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .line 169
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCookie:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCPS:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoContainer:Landroid/widget/RelativeLayout;

    .line 179
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    .line 180
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBackButton:Landroid/widget/ImageView;

    .line 181
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mShareButton:Landroid/widget/ImageView;

    .line 182
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTitleView:Landroid/widget/TextView;

    .line 183
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    .line 184
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    .line 186
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    .line 188
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    .line 189
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    .line 191
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabPageAdapter:Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;

    .line 200
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    .line 205
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    .line 206
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendStarButton:Landroid/widget/Button;

    .line 207
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    .line 210
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .line 211
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    .line 212
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabImage:Landroid/widget/ImageView;

    .line 213
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabText:Landroid/widget/TextView;

    .line 216
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .line 217
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    .line 218
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabImage:Landroid/widget/ImageView;

    .line 219
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabText:Landroid/widget/TextView;

    .line 222
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 223
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    .line 224
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .line 233
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberSlideView:Landroid/widget/ImageView;

    .line 234
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberLayout:Landroid/widget/LinearLayout;

    .line 236
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bRestAPIServBind:Z

    .line 237
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 238
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    .line 239
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bAPIServBind:Z

    .line 240
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    .line 241
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    .line 242
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    .line 244
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDisplay:Landroid/view/Display;

    .line 245
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    .line 246
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    .line 250
    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGetMax:I

    .line 252
    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startLoopGet:I

    .line 254
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    .line 256
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    .line 259
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    .line 260
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 270
    new-instance v0, Lcom/youku/laifeng/sdk/util/AnimationController;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/util/AnimationController;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    .line 274
    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .line 282
    new-instance v0, Lcom/youku/laifeng/sdk/download/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/download/DefaultRetryPolicy;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    .line 284
    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId1:I

    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId2:I

    .line 285
    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryGetDownloadUrlCount:I

    .line 286
    const-string v0, "http://package.laifeng.com/package/82001/laifeng.apk"

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    .line 289
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkListener:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .line 310
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$2;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    .line 336
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$3;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 1045
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    .line 1059
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$10;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mEditFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1071
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$11;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mEditTouchListener:Landroid/view/View$OnTouchListener;

    .line 1256
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$13;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 1323
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$14;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    .line 1335
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$15;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStarTask:Ljava/lang/Runnable;

    .line 1348
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$16;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    .line 2296
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$23;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$23;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStream:Ljava/lang/Runnable;

    .line 2348
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$24;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDlgListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    .line 2643
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    return p1
.end method

.method static synthetic access$1000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bAPIServBind:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initExpressionView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/TabViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/PlayerStateView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/player/UVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    return v0
.end method

.method static synthetic access$3208(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    return v0
.end method

.method static synthetic access$3300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bRestAPIServBind:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChatGate()V

    return-void
.end method

.method static synthetic access$7200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    return-void
.end method

.method static synthetic access$7300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->cancelDownloadRequest()V

    return-void
.end method

.method static synthetic access$7500(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkIsAPKFileOK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->installApk()V

    return-void
.end method

.method static synthetic access$7700(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId1:I

    return v0
.end method

.method static synthetic access$7800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest1:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startDownloadRequestManual()V

    return-void
.end method

.method static synthetic access$800(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    return-void
.end method

.method static synthetic access$8000(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ViewSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadProgressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    return-object p1
.end method

.method private attentionActor(Ljava/lang/String;)V
    .locals 7
    .param p1, "actorId"    # Ljava/lang/String;

    .prologue
    .line 2158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2160
    .local v1, "sendStarArg":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2161
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_ATTENTION:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2167
    :cond_0
    :goto_0
    return-void

    .line 2162
    :catch_0
    move-exception v0

    .line 2163
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2164
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 2165
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 1125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v0, "intent2":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bRestAPIServBind:Z

    .line 1127
    return-void
.end method

.method private cancelAttentionActor(Ljava/lang/String;)V
    .locals 7
    .param p1, "actorId"    # Ljava/lang/String;

    .prologue
    .line 2170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2172
    .local v1, "sendStarArg":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CANCEL_ATTENTION:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2176
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private cancelDownloadRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->cancelAll()V

    .line 422
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadProgressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherPrev()V

    .line 434
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->updateDownloadProgress(I)V

    .line 436
    :cond_2
    return-void
.end method

.method private changeNickName(Ljava/lang/String;)V
    .locals 7
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 2146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2148
    .local v1, "sendStarArg":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "nickName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2149
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CHANGE_NICK_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2152
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 2153
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkIsAPKFileOK()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 2728
    sget-object v8, Lcom/youku/laifeng/sdk/download/DownloadConstants;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2729
    .local v1, "apkFilePath":Ljava/lang/String;
    const-string v8, "LaifengLiveRoomActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIsAPKFileOK[]>>>>>apk file path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2731
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2732
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2733
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2734
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 2735
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2736
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2737
    .local v3, "appName":Ljava/lang/String;
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2738
    .local v6, "packageName":Ljava/lang/String;
    const-string v8, "LaifengLiveRoomActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIsAPKFileOK[>>>>appName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const-string v8, "LaifengLiveRoomActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIsAPKFileOK[>>>>packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    const-string v8, "com.youku.crazytogether"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2746
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private checkUserNeedDownload()V
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getSwitchOpenStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isNeedDownloadByDays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    new-instance v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$6;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 886
    :cond_0
    return-void
.end method

.method private checkquit()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 2210
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getRequestedOrientation()I

    move-result v0

    .line 2211
    .local v0, "orientation":I
    if-eq v0, v1, :cond_0

    .line 2212
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setRequestedOrientation(I)V

    .line 2213
    const/4 v1, 0x0

    .line 2225
    :goto_0
    return v1

    .line 2216
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 2217
    const-string/jumbo v2, "string"

    const-string v3, "main_exit_room_tips"

    invoke-static {p0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {p0, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExitToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .line 2219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExitTime:J

    .line 2220
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExitToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto :goto_0

    .line 2222
    :cond_1
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExitToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->dismiss()V

    .line 2223
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->finish()V

    goto :goto_0
.end method

.method private closeChat()V
    .locals 3

    .prologue
    .line 1178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    .line 1180
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;->unregisterChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V

    .line 1182
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private connectChat()V
    .locals 3

    .prologue
    .line 1162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    .line 1163
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    if-nez v1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;->registerChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V

    .line 1168
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private connectChatGate()V
    .locals 6

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v2, "gate"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v3, "rid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteListData(Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v5, "gate"

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v5, "rid"

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1157
    :cond_2
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    goto :goto_0
.end method

.method public static fixPeopleShow(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "coins"    # Ljava/lang/String;

    .prologue
    .line 2496
    const-wide/16 v0, 0x0

    .line 2498
    .local v0, "c":J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2502
    :goto_0
    const-wide/32 v4, 0x3b9aca00

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 2503
    const-wide/32 v4, 0x5f5e100

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 2504
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f \u4ebf"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-double v8, v0

    const-wide v10, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2515
    .end local p0    # "coins":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 2499
    .restart local p0    # "coins":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2500
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2506
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d \u4ebf"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-int v7, v0

    int-to-long v8, v7

    const-wide/32 v10, 0x5f5e100

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2508
    :cond_2
    const-wide/32 v4, 0x186a0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 2509
    const-wide/16 v4, 0x2710

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 2510
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.1f \u4e07"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-double v8, v0

    const-wide v10, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2512
    :cond_3
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d \u4e07"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-int v7, v0

    int-to-long v8, v7

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private getDownloadApkUrl()V
    .locals 7

    .prologue
    .line 1241
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    if-nez v2, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1246
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1247
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCPS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1248
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_CPS_URL_EXCHANGE:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1249
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1251
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1252
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getIntentData()V
    .locals 3

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIntent:Landroid/content/Intent;

    .line 596
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "intent.data.come.in.room"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 597
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "intent.data.come.in.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 598
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "intent.data.come.in.user.cookie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCookie:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "intent.data.come.in.cps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCPS:Ljava/lang/String;

    .line 600
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentData[]>>>>>>m CPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mCPS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    if-eqz v0, :cond_0

    .line 602
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->builderRoomInfo(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/SDKRoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    if-eqz v0, :cond_1

    .line 609
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;->builderUserInfo(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/data/SDKUserInfo;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    .line 614
    :goto_1
    return-void

    .line 605
    :cond_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    goto :goto_0

    .line 612
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    goto :goto_1
.end method

.method private getRecommendRooms()V
    .locals 7

    .prologue
    .line 1225
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    if-nez v2, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1230
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1231
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "aid"

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v4, "aid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_RECOMMEND_ROOMS:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1233
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1235
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStreamUrl()V
    .locals 7

    .prologue
    .line 1190
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    if-nez v2, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1196
    .local v1, "tmp":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "roomId"

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v4, "rid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1197
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STREAM:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1200
    :cond_2
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    goto :goto_0

    .line 1201
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1202
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initExpressionView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 982
    const-string v5, "id"

    const-string v6, "expression_viewpager"

    invoke-static {p0, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionViewPager:Landroid/support/v4/view/ViewPager;

    .line 983
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;

    invoke-direct {v6, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$8;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1004
    const-string v5, "id"

    const-string v6, "expression_select_dot_container"

    invoke-static {p0, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

    .line 1005
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/sdk/widget/PagerExpression;>;"
    const-string v5, "id"

    const-string v6, "dot_layout_id"

    invoke-static {p0, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1007
    .local v0, "dot_layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    .line 1008
    .local v3, "pageNum":I
    if-ne v3, v8, :cond_0

    .line 1009
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1017
    :goto_0
    new-array v5, v3, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    .line 1018
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 1020
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v6, "layout"

    const-string v7, "lf_chat_pager_expression"

    invoke-static {p0, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/youku/laifeng/sdk/widget/PagerExpression;

    .line 1021
    .local v4, "v":Lcom/youku/laifeng/sdk/widget/PagerExpression;
    if-nez v1, :cond_1

    .line 1023
    mul-int/lit8 v5, v1, 0x4

    mul-int/lit8 v5, v5, 0x6

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->init(IILcom/youku/laifeng/sdk/control/IExpressionSelectListener;)V

    .line 1029
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 1031
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    add-int/lit16 v6, v1, 0x1000

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 1032
    if-nez v1, :cond_2

    .line 1033
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    const-string v6, "drawable"

    const-string v7, "lf_expression_pager_dot_select"

    invoke-static {p0, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1037
    :goto_3
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1011
    .end local v1    # "i":I
    .end local v4    # "v":Lcom/youku/laifeng/sdk/widget/PagerExpression;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1026
    .restart local v1    # "i":I
    .restart local v4    # "v":Lcom/youku/laifeng/sdk/widget/PagerExpression;
    :cond_1
    mul-int/lit8 v5, v1, 0x4

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->init(IILcom/youku/laifeng/sdk/control/IExpressionSelectListener;)V

    goto :goto_2

    .line 1035
    :cond_2
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    const-string v6, "drawable"

    const-string v7, "lf_expression_pager_dot_normal"

    invoke-static {p0, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1040
    .end local v4    # "v":Lcom/youku/laifeng/sdk/widget/PagerExpression;
    :cond_3
    new-instance v5, Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;

    invoke-direct {v5, v2}, Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionAdapter:Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;

    .line 1041
    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionAdapter:Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1042
    return-void
.end method

.method private initRecommendRoomsView()V
    .locals 3

    .prologue
    .line 955
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->init(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    new-instance v1, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$7;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setOnRoomClickListener(Lcom/youku/laifeng/sdk/widget/RecommendRoomsView$OnRoomClickListener;)V

    .line 979
    return-void
.end method

.method private initTabVew()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 916
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 917
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 919
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberSlideView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 922
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    invoke-virtual {v1, v3}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setCurrentItem(I)V

    .line 923
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    .line 934
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->getRealWidth(Landroid/view/Display;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 936
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 944
    return-void

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 926
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 927
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberSlideView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 929
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    goto :goto_0

    .line 931
    :cond_2
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 932
    iput-boolean v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    goto :goto_0
.end method

.method private initTabViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 889
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v3, "layout"

    const-string v4, "lf_view_tab_chat"

    invoke-static {p0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .line 890
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->initView()V

    .line 891
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v3, "layout"

    const-string v4, "lf_view_tab_vote"

    invoke-static {p0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .line 894
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->initView(Landroid/content/Context;)V

    .line 895
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->setDownloadDlg(Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;)V

    .line 896
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 901
    .local v0, "mScroller":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 902
    new-instance v1, Lcom/youku/laifeng/sdk/widget/FixedSpeedScroller;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/laifeng/sdk/widget/FixedSpeedScroller;-><init>(Landroid/content/Context;)V

    .line 903
    .local v1, "scroller":Lcom/youku/laifeng/sdk/widget/FixedSpeedScroller;
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v0    # "mScroller":Ljava/lang/reflect/Field;
    .end local v1    # "scroller":Lcom/youku/laifeng/sdk/widget/FixedSpeedScroller;
    :goto_0
    new-instance v2, Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabPageAdapter:Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;

    .line 909
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabPageAdapter:Lcom/youku/laifeng/sdk/adapter/RoomTabPageAdapter;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 910
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    invoke-virtual {v2, p0}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 911
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setCurrentItem(I)V

    .line 912
    return-void

    .line 906
    :catch_0
    move-exception v2

    goto :goto_0

    .line 905
    :catch_1
    move-exception v2

    goto :goto_0

    .line 904
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 947
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string v2, "lf_view_player"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 949
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    invoke-virtual {v0, v1, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->initPlayer(Landroid/os/Handler;Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;)V

    .line 950
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/16 v2, 0x7d0

    .line 439
    const-string/jumbo v1, "\u6210\u529f\u8d60\u9001\u661f\u661f"

    invoke-static {p0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarSuccessToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .line 440
    const-string/jumbo v1, "\u5f88\u62b1\u6b49,\u8d60\u9001\u661f\u661f\u5931\u8d25!"

    invoke-static {p0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarFailToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .line 443
    new-instance v1, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .line 445
    const-string v1, "id"

    const-string/jumbo v2, "toolbar_text_title"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTitleView:Landroid/widget/TextView;

    .line 446
    const-string v1, "id"

    const-string/jumbo v2, "toolbar_back"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBackButton:Landroid/widget/ImageView;

    .line 447
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const-string v1, "id"

    const-string/jumbo v2, "toolbar_share"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mShareButton:Landroid/widget/ImageView;

    .line 450
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const-string v1, "id"

    const-string v2, "follow_button"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    .line 453
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    const-string v1, "id"

    const-string v2, "actor_extra_layout"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    .line 457
    const-string v1, "id"

    const-string v2, "actor_avatar"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorAvatar:Landroid/widget/ImageView;

    .line 458
    const-string v1, "id"

    const-string v2, "actor_level"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorLevel:Landroid/widget/ImageView;

    .line 459
    const-string v1, "id"

    const-string v2, "actor_name"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorName:Landroid/widget/TextView;

    .line 461
    const-string v1, "id"

    const-string v2, "actor_extra_follow_text"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowNumberText:Landroid/widget/TextView;

    .line 462
    const-string v1, "id"

    const-string v2, "actor_extra_online_text"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberText:Landroid/widget/TextView;

    .line 464
    const-string v1, "id"

    const-string v2, "actor_extra_slider_two"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberSlideView:Landroid/widget/ImageView;

    .line 465
    const-string v1, "id"

    const-string v2, "actor_extra_online_layout"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberLayout:Landroid/widget/LinearLayout;

    .line 467
    const-string v1, "id"

    const-string/jumbo v2, "send_star_layout"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    .line 468
    const-string v1, "id"

    const-string/jumbo v2, "star_count_view"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    .line 469
    const-string v1, "id"

    const-string/jumbo v2, "send_star_button"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendStarButton:Landroid/widget/Button;

    .line 470
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendStarButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const-string v1, "id"

    const-string v2, "expression_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    .line 473
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    new-instance v2, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$4;

    invoke-direct {v2, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$4;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    const-string v1, "id"

    const-string v2, "edit_chat_tab_inputbox"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    .line 481
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mEditFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 482
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mEditTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    const-string v1, "id"

    const-string v2, "btn_chat_tab_expression"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    .line 485
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    const-string v1, "id"

    const-string v2, "btn_chat_send"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnChatSend:Landroid/widget/Button;

    .line 488
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnChatSend:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const-string v1, "id"

    const-string v2, "livehouse_chat_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mLiveHouseChatContainer:Landroid/widget/LinearLayout;

    .line 492
    const-string v1, "id"

    const-string/jumbo v2, "toolbar_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    .line 494
    const-string v1, "id"

    const-string/jumbo v2, "video_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoContainer:Landroid/widget/RelativeLayout;

    .line 495
    const-string v1, "id"

    const-string v2, "player_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    .line 496
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v2, "layout"

    const-string v3, "lf_view_player"

    invoke-static {p0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 497
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v1, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->setSoundEffectsEnabled(Z)V

    .line 500
    const-string v1, "id"

    const-string v2, "playerState_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    .line 501
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    invoke-virtual {v1, v2, p0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->initPlayer(Landroid/os/Handler;Lcom/youku/laifeng/sdk/widget/player/UVideoView$OnPlayerListener;)V

    .line 502
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    const-string v1, "id"

    const-string v2, "gift_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGiftContainer:Landroid/widget/LinearLayout;

    .line 506
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->getInstance()Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->startStarLogic()V

    .line 509
    const-string v1, "id"

    const-string/jumbo v2, "tab_toolbar_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    .line 512
    const-string v1, "id"

    const-string/jumbo v2, "room_chat_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    .line 513
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const-string v1, "id"

    const-string/jumbo v2, "room_chat_image"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabImage:Landroid/widget/ImageView;

    .line 515
    const-string v1, "id"

    const-string/jumbo v2, "room_chat"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabText:Landroid/widget/TextView;

    .line 516
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    const-string v2, "drawable"

    const-string v3, "lf_room_tab_select"

    invoke-static {p0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 517
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 519
    const-string v1, "id"

    const-string/jumbo v2, "room_vote_container"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    .line 520
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    const-string v1, "id"

    const-string/jumbo v2, "room_vote_image"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabImage:Landroid/widget/ImageView;

    .line 522
    const-string v1, "id"

    const-string/jumbo v2, "room_vote"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabText:Landroid/widget/TextView;

    .line 525
    const-string v1, "id"

    const-string v2, "lf_live_room_download_layout"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    .line 526
    const-string v1, "id"

    const-string v2, "lf_live_room_download_switcher"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    .line 527
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    const-string v1, "id"

    const-string v2, "lf_live_room_download_install_button"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadButton:Landroid/widget/Button;

    .line 529
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const-string v1, "id"

    const-string v2, "lf_live_room_download_progress_bar"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadProgressbar:Landroid/widget/ProgressBar;

    .line 534
    const-string v1, "id"

    const-string v2, "lf_live_room_download_close"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadClose:Landroid/widget/ImageView;

    .line 535
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const-string v1, "id"

    const-string/jumbo v2, "tab_pager"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/widget/TabViewPager;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    .line 539
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 540
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$5;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 548
    return-void
.end method

.method private installApk()V
    .locals 3

    .prologue
    .line 2750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/laifeng/sdk/download/DownloadConstants;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2752
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startActivity(Landroid/content/Intent;)V

    .line 2753
    return-void
.end method

.method private isFollow()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x12c

    .line 2480
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v1, "attentioned"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    .line 2486
    :goto_0
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    if-eqz v0, :cond_1

    .line 2487
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-string v1, "drawable"

    const-string v4, "lf_live_room_follow_icon"

    invoke-static {p0, v1, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2488
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 2493
    :goto_1
    return-void

    .line 2483
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    goto :goto_0

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-string v1, "drawable"

    const-string v4, "lf_live_room_unfollow_icon"

    invoke-static {p0, v1, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2491
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    goto :goto_1
.end method

.method private isLogin()Z
    .locals 2

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    const-string v1, "logined"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    const/4 v0, 0x0

    .line 2475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedDownloadByDays()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2521
    const-string v9, "LF_PlayDays"

    invoke-virtual {p0, v9, v8}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2522
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2523
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 2526
    .local v6, "today":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2527
    .local v2, "defaultDays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2529
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2530
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "days"

    invoke-interface {v5, v9, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 2532
    .local v1, "days":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2533
    .local v4, "newDays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2535
    if-eqz v1, :cond_6

    .line 2536
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 2568
    :goto_0
    return v7

    .line 2538
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 2539
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 2540
    goto :goto_0

    .line 2542
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2543
    const-string v8, "days"

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2544
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2548
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 2549
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2550
    const-string v7, "days"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2551
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    :goto_1
    move v7, v8

    .line 2565
    goto :goto_0

    .line 2553
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2554
    const-string v7, "days"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2555
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2558
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2559
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2560
    const-string v7, "days"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2561
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_6
    move v7, v8

    .line 2568
    goto :goto_0
.end method

.method private isNeedDownloadByPlayTimes()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2573
    const-string v11, "LF_OneDayPlayTimes"

    invoke-virtual {p0, v11, v10}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2574
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2575
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2577
    .local v8, "today":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2579
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v11, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v12, "rid"

    invoke-virtual {v11, v12}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2580
    .local v7, "thisRoomId":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2581
    .local v2, "defaultRoomIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2583
    const-string/jumbo v11, "roomIds"

    invoke-interface {v5, v11, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 2584
    .local v6, "roomIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v11, "day"

    invoke-interface {v5, v11, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2586
    .local v1, "day":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2587
    .local v4, "newRoomIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2589
    if-eqz v6, :cond_7

    .line 2590
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2591
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    if-le v11, v13, :cond_0

    .line 2634
    :goto_0
    return v9

    .line 2593
    :cond_0
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    if-ne v11, v13, :cond_2

    .line 2594
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v9, v10

    .line 2595
    goto :goto_0

    .line 2597
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2598
    const-string v10, "day"

    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2599
    const-string/jumbo v10, "roomIds"

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2600
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2604
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    if-ne v11, v9, :cond_5

    .line 2605
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2606
    const-string v9, "day"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2607
    const-string/jumbo v9, "roomIds"

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2608
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    :goto_1
    move v9, v10

    .line 2624
    goto :goto_0

    .line 2610
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2611
    const-string v9, "day"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2612
    const-string/jumbo v9, "roomIds"

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2613
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2616
    :cond_5
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2617
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2618
    const-string v9, "day"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2619
    const-string/jumbo v9, "roomIds"

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2620
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2627
    :cond_6
    const-string v9, "day"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2628
    const-string/jumbo v9, "roomIds"

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2629
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v9, v10

    .line 2630
    goto :goto_0

    :cond_7
    move v9, v10

    .line 2634
    goto :goto_0
.end method

.method private judgeUserRight()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v1, "roomBanSpeak"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 858
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v1, "roomKickOut"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v1, "roomKickOutMsg"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    .line 861
    :cond_0
    return-void
.end method

.method private parseStreamUrl(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "src"    # Lorg/json/JSONArray;

    .prologue
    .line 1207
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1208
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1209
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1214
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1216
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1217
    .local v2, "tmp4":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    const-string v4, "psUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .end local v2    # "tmp4":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1211
    .end local v1    # "i":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    goto :goto_0

    .line 1218
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1222
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    return-void
.end method

.method private playVideo()V
    .locals 3

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    if-nez v0, :cond_0

    .line 1967
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1955
    :cond_1
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    goto :goto_0

    .line 1959
    :cond_2
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1960
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setGone()V

    .line 1963
    :cond_3
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVideoLoadingVisible()V

    .line 1964
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->openVideo(Ljava/lang/String;)V

    .line 1966
    :cond_4
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkUserNeedDownload()V

    goto :goto_0
.end method

.method private releaseVideo()V
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->release()V

    .line 2344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 2346
    :cond_0
    return-void
.end method

.method private removeDownloadLayout()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2692
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2693
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    const-string/jumbo v3, "translationX"

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    .line 2694
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2693
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2697
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2698
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2699
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2700
    new-instance v1, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$25;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2725
    return-void
.end method

.method private sendChatMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1115
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "content"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getConvertStringWithResName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    const-string/jumbo v2, "roomId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1117
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {v2, v3, v1}, Lcom/youku/laifeng/libcuteroom/utils/ChatRestAPI;->sendMessage(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendDownMessage()V
    .locals 4

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v1, 0xf001

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2639
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v1, 0xf002

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2640
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v1, 0xf003

    const-wide/32 v2, 0x16e360

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2641
    return-void
.end method

.method private sendStar()V
    .locals 7

    .prologue
    const/16 v5, 0x7d0

    .line 2123
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "aid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2124
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "star_do_not_send"

    invoke-static {p0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    if-nez v2, :cond_0

    .line 2129
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 2130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2131
    .local v1, "sendStarArg":Lorg/json/JSONObject;
    const-string/jumbo v2, "roomId"

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v4, "rid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    .line 2133
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_SEND:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2138
    .end local v1    # "sendStarArg":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2139
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2135
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "string"

    const-string/jumbo v3, "star_no_star"

    invoke-static {p0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {p0, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2140
    :catch_1
    move-exception v0

    .line 2141
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setActorInfo()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 822
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "faceUrl"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorAvatar:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/LaifengSDKApplication;->getRoundOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 825
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v2, "al"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/corncop/virgo/VirgoValueUtil;->safeValueOf(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 827
    .local v0, "actorLevel":I
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorLevel:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 829
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    .end local v0    # "actorLevel":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "nn"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowNumberText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v4, "an"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->fixPeopleShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v4, "onNum"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->fixPeopleShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->setUserId(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 844
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 846
    return-void

    .line 831
    .restart local v0    # "actorLevel":I
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 833
    .end local v0    # "actorLevel":I
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setTiefenInfo()V
    .locals 2

    .prologue
    .line 849
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getTiefenUserList()Ljava/util/ArrayList;

    move-result-object v0

    .line 850
    .local v0, "tiefenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->upDataTieFenInfo(Ljava/util/ArrayList;)V

    .line 853
    :cond_0
    return-void
.end method

.method private showDownloadDialog(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->show(I)V

    .line 2231
    invoke-static {p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    .line 2236
    :goto_0
    return-void

    .line 2234
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startDownloadRequestManual()V
    .locals 3

    .prologue
    .line 410
    const-string v0, "LaifengLiveRoomActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownloadRequestManual[]<<<<<download url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;-><init>(Landroid/net/Uri;)V

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadConstants;->mDestinationUri:Landroid/net/Uri;

    .line 412
    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->NORMAL:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 413
    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setPriority(Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    .line 414
    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setRetryPolicy(Lcom/youku/laifeng/sdk/download/RetryPolicy;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v0

    new-instance v1, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;)V

    .line 415
    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadListener(Lcom/youku/laifeng/sdk/download/DownloadStatusListener;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest2:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 416
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest2:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId2:I

    .line 417
    return-void
.end method

.method private startSilentDownloadTask()V
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->getCurrentQueueSize()I

    move-result v0

    .line 393
    .local v0, "currentRequestQueueSize":I
    const-string v1, "LaifengLiveRoomActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSilentDownloadTask[]>>>>current request size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-lez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->cancelAll()V

    .line 397
    :cond_0
    const-string v1, "LaifengLiveRoomActivity"

    const-string/jumbo v2, "startSilentDownloadTask[]>>>>add a silent download task>>>"

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "LaifengLiveRoomActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSilentDownloadTask[]<<<<<download url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v1, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest;-><init>(Landroid/net/Uri;)V

    sget-object v2, Lcom/youku/laifeng/sdk/download/DownloadConstants;->mDestinationUri:Landroid/net/Uri;

    .line 400
    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v1

    sget-object v2, Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;->LOW:Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;

    .line 401
    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setPriority(Lcom/youku/laifeng/sdk/download/DownloadRequest$Priority;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryPolicy:Lcom/youku/laifeng/sdk/download/RetryPolicy;

    .line 402
    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setRetryPolicy(Lcom/youku/laifeng/sdk/download/RetryPolicy;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest1:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 403
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest1:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId1:I

    .line 404
    const-string v1, "LaifengLiveRoomActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSilentDownloadTask[]>>>>>request id1>>>> = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private startToolbar()V
    .locals 4

    .prologue
    .line 1085
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    .line 1086
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1087
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1088
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$12;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$12;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1109
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1110
    return-void
.end method

.method private unbindService()V
    .locals 2

    .prologue
    .line 1131
    :try_start_0
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bAPIServBind:Z

    if-eqz v1, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->closeChat()V

    .line 1133
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatService:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    .line 1136
    :cond_0
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bRestAPIServBind:Z

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :cond_1
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2184
    .local v0, "keyCode":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 2186
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2187
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2189
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2190
    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "lf_chat_expression_btn_normal"

    invoke-static {p0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2206
    :cond_0
    :goto_0
    return v1

    .line 2200
    :cond_1
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkquit()Z

    move-result v1

    goto :goto_0

    .line 2202
    :cond_2
    const/16 v2, 0x52

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2206
    :cond_3
    invoke-super {p0, p1}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 39
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1493
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1947
    :cond_0
    :goto_0
    return-void

    .line 1495
    :sswitch_0
    const-string v2, "LaifengLiveRoomActivity"

    const-string/jumbo v3, "rest api----------------------OK!!"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    new-instance v21, Landroid/content/Intent;

    const-class v2, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v21, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bAPIServBind:Z

    .line 1498
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getDownloadApkUrl()V

    .line 1499
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1505
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-interface {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getGiftMap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->updateGift(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1506
    :catch_0
    move-exception v13

    .line 1507
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1941
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "intent2":Landroid/content/Intent;
    :catch_1
    move-exception v13

    .line 1942
    .restart local v13    # "e":Ljava/lang/Exception;
    instance-of v2, v13, Landroid/os/RemoteException;

    if-eqz v2, :cond_2

    .line 1943
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    .line 1945
    :cond_2
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1512
    .end local v13    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    if-eqz v2, :cond_0

    .line 1515
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 1516
    .local v27, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    new-instance v33, Lorg/json/JSONObject;

    invoke-virtual/range {v27 .. v27}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v33, "tmpStream":Lorg/json/JSONObject;
    invoke-virtual/range {v27 .. v27}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1518
    const-string/jumbo v2, "roomStatus"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1519
    const-string/jumbo v2, "stream"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->parseStreamUrl(Lorg/json/JSONArray;)V

    .line 1520
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->playVideo()V

    goto/16 :goto_0

    .line 1522
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 1523
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getRecommendRooms()V

    goto/16 :goto_0

    .line 1526
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 1527
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getRecommendRooms()V

    goto/16 :goto_0

    .line 1531
    .end local v27    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .end local v33    # "tmpStream":Lorg/json/JSONObject;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->playVideo()V

    goto/16 :goto_0

    .line 1534
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChatGate()V

    goto/16 :goto_0

    .line 1537
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 1538
    .local v9, "GateResp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "host"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1547
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChat()V

    goto/16 :goto_0

    .line 1545
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIMAddr:Ljava/lang/String;

    goto :goto_1

    .line 1550
    .end local v9    # "GateResp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    .line 1551
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChatGate()V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    goto/16 :goto_0

    .line 1555
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    .line 1556
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChatGate()V

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    goto/16 :goto_0

    .line 1560
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->stop()V

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->release()V

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-eqz v2, :cond_7

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setGone()V

    .line 1565
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    goto/16 :goto_0

    .line 1568
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initVideoView()V

    .line 1569
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    .line 1570
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->connectChatGate()V

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_STAR_GET:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1574
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    if-eqz v2, :cond_8

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->release()V

    .line 1576
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1578
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    .line 1579
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->closeChat()V

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    if-eqz v2, :cond_0

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->clearPreviousRoomMsg()V

    goto/16 :goto_0

    .line 1585
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 1586
    .local v29, "star":Ljava/lang/String;
    new-instance v30, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v30, "starm":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    if-eqz v2, :cond_0

    .line 1588
    const-string v2, "i"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 1589
    .local v22, "isSelf":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    if-eqz v2, :cond_a

    if-nez v22, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLiveHouse:Z

    if-nez v2, :cond_0

    .line 1590
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    if-eqz v2, :cond_0

    .line 1591
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->getInstance()Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->setGift2dview(Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;)Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    move-result-object v2

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->showStarGift(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;Z)V

    goto/16 :goto_0

    .line 1596
    .end local v22    # "isSelf":Z
    .end local v29    # "star":Ljava/lang/String;
    .end local v30    # "starm":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;
    :sswitch_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    goto/16 :goto_0

    .line 1599
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1600
    .local v24, "message":Ljava/lang/String;
    new-instance v11, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1602
    .local v11, "chatMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v2, v11}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->setNewMsg(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1607
    :goto_2
    :try_start_5
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LiveRoomActivity"

    invoke-virtual {v11}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->getMessageDetail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1603
    :catch_2
    move-exception v13

    .line 1604
    .local v13, "e":Ljava/lang/NullPointerException;
    const-string v2, "handleMessage"

    const-string v3, "Chat NullPointerException"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1610
    .end local v11    # "chatMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
    .end local v13    # "e":Ljava/lang/NullPointerException;
    .end local v24    # "message":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 1611
    .local v16, "gift":Ljava/lang/String;
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v17, "giftMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->setNewMsg(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V

    .line 1614
    const-string v2, "r"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_d

    .line 1615
    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getMesasgeSource()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    if-eqz v2, :cond_d

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getCoins()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "r"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->updateUserCoins(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "str_lucky_gift_dlg_msg"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "n"

    .line 1619
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xingmeng_gift_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "g"

    .line 1620
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "t"

    .line 1621
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1618
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1622
    .local v18, "hornResult":Ljava/lang/String;
    const-string v2, "rd"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyArrayByKey(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 1623
    .local v31, "tmp":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_d

    .line 1624
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 1625
    .local v23, "item":Lorg/json/JSONObject;
    const-string v2, "r"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 1623
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1628
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "str_lucky_gift_dlg_add_msg"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "r"

    .line 1629
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "q"

    .line 1630
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1628
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1631
    .local v19, "hornResultItem":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    .line 1636
    .end local v18    # "hornResult":Ljava/lang/String;
    .end local v19    # "hornResultItem":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v23    # "item":Lorg/json/JSONObject;
    .end local v31    # "tmp":Lorg/json/JSONArray;
    :cond_d
    const-string/jumbo v2, "ti"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mUserInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKUserInfo;->getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isEnter:Z

    if-eqz v2, :cond_0

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getCoins()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "e"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->updateUserCoins(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1641
    .end local v16    # "gift":Ljava/lang/String;
    .end local v17    # "giftMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 1642
    .local v14, "enter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;

    invoke-direct {v3, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->setNewMsg(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V

    goto/16 :goto_0

    .line 1645
    .end local v14    # "enter":Ljava/lang/String;
    :sswitch_f
    new-instance v10, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v10, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v10, "attMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowNumberText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowNumberText:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->getAttentionCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1650
    .end local v10    # "attMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;
    :sswitch_10
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->setData(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mOnlineNumberText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->getCount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->fixPeopleShow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4eba"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1654
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 1655
    .local v25, "play":Ljava/lang/String;
    new-instance v15, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v15, "flash":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;
    invoke-virtual {v15}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->getPlayStatus()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1659
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStreamUrl()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    goto/16 :goto_0

    .line 1662
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->stop()V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1665
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getRecommendRooms()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1670
    .end local v15    # "flash":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;
    .end local v25    # "play":Ljava/lang/String;
    :sswitch_12
    :try_start_6
    new-instance v31, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1671
    .local v31, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v2, "response"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 1672
    .local v32, "tmp1":Lorg/json/JSONObject;
    const-string v2, "code"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1673
    .local v26, "res":Ljava/lang/String;
    const-string v2, "SUCCESS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1674
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-string v3, "drawable"

    const-string v4, "lf_live_room_unfollow_icon"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1676
    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    .line 1677
    const-string v2, "message"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1679
    .end local v26    # "res":Ljava/lang/String;
    .end local v31    # "tmp":Lorg/json/JSONObject;
    .end local v32    # "tmp1":Lorg/json/JSONObject;
    :catch_3
    move-exception v13

    .line 1680
    .local v13, "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1685
    .end local v13    # "e":Lorg/json/JSONException;
    :sswitch_13
    :try_start_8
    new-instance v31, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1686
    .restart local v31    # "tmp":Lorg/json/JSONObject;
    const-string/jumbo v2, "response"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 1687
    .restart local v32    # "tmp1":Lorg/json/JSONObject;
    const-string v2, "code"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1688
    .restart local v26    # "res":Ljava/lang/String;
    const-string v2, "SUCCESS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1689
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_follow_success"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-string v3, "drawable"

    const-string v4, "lf_live_room_follow_icon"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x190

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 1693
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    .line 1694
    const-string v2, "message"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 1696
    .end local v26    # "res":Ljava/lang/String;
    .end local v31    # "tmp":Lorg/json/JSONObject;
    .end local v32    # "tmp1":Lorg/json/JSONObject;
    :catch_4
    move-exception v13

    .line 1697
    .restart local v13    # "e":Lorg/json/JSONException;
    :try_start_9
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1702
    .end local v13    # "e":Lorg/json/JSONException;
    :sswitch_14
    :try_start_a
    new-instance v31, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1703
    .restart local v31    # "tmp":Lorg/json/JSONObject;
    const-string/jumbo v2, "response"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 1704
    .restart local v32    # "tmp1":Lorg/json/JSONObject;
    const-string v2, "code"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1705
    .restart local v26    # "res":Ljava/lang/String;
    const-string v2, "SUCCESS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1706
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_chat_sendsuccess"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "str_chatbox_hint"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v35

    .line 1710
    .local v35, "view":Landroid/view/View;
    if-eqz v35, :cond_f

    .line 1711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1713
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v4, "lf_chat_expression_btn_normal"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 1722
    .end local v26    # "res":Ljava/lang/String;
    .end local v31    # "tmp":Lorg/json/JSONObject;
    .end local v32    # "tmp1":Lorg/json/JSONObject;
    .end local v35    # "view":Landroid/view/View;
    :catch_5
    move-exception v13

    .line 1723
    .restart local v13    # "e":Lorg/json/JSONException;
    :try_start_b
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 1720
    .end local v13    # "e":Lorg/json/JSONException;
    .restart local v26    # "res":Ljava/lang/String;
    .restart local v31    # "tmp":Lorg/json/JSONObject;
    .restart local v32    # "tmp1":Lorg/json/JSONObject;
    :cond_10
    :try_start_c
    const-string v2, "message"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 1727
    .end local v26    # "res":Ljava/lang/String;
    .end local v31    # "tmp":Lorg/json/JSONObject;
    .end local v32    # "tmp1":Lorg/json/JSONObject;
    :sswitch_15
    :try_start_d
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-interface {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getStarInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->parser(Ljava/lang/String;)V

    .line 1728
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->setInit(Z)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_13

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 1740
    :cond_11
    :goto_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getInstance()Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->cancelNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;)V

    .line 1741
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    .line 1742
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarTodayGain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    .line 1743
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarTodayMax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGetMax:I

    .line 1744
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getLeftSeconds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_12

    .line 1745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    if-nez v2, :cond_12

    .line 1746
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    .line 1747
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getInstance()Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getLeftSeconds()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    new-instance v6, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$17;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v2 .. v8}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    .line 1756
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    goto/16 :goto_0

    .line 1735
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    goto/16 :goto_5

    .line 1759
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 1760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startLoopGet:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_14

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStarTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1762
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startLoopGet:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startLoopGet:I

    .line 1763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    goto/16 :goto_0

    .line 1766
    :sswitch_17
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_15

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_15

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    .line 1772
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGetMax:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1773
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarTotalMax()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1774
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    if-nez v2, :cond_0

    .line 1775
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    .line 1776
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getInstance()Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarGap()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    new-instance v6, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$18;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v2 .. v8}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    goto/16 :goto_0

    .line 1788
    :sswitch_18
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-interface {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getStarInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->parser(Ljava/lang/String;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1790
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_16

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 1795
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGetMax:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarGet:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_17

    .line 1796
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarTotalMax()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 1797
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    if-nez v2, :cond_17

    .line 1798
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCycleRunning:Z

    .line 1799
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->getInstance()Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTimerListener:Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarGap()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    new-instance v6, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$19;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v2 .. v8}, Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimer;->addNotify(Lcom/youku/laifeng/libcuteroom/widget/timer/SYTimerListener;JLcom/youku/laifeng/libcuteroom/widget/timer/SYTimerTask$SYTimerStepListener;J)V

    .line 1809
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isStarSending:Z

    .line 1810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarSuccessToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarSuccessToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1811
    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->clearSuperActivityToastsForActivity(Landroid/app/Activity;)V

    .line 1813
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_send_star_success"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarSuccessToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto/16 :goto_0

    .line 1818
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarFailToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarFailToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1819
    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->clearSuperActivityToastsForActivity(Landroid/app/Activity;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarFailToast:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto/16 :goto_0

    .line 1824
    :sswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getStarAvail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_18

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    goto/16 :goto_0

    .line 1831
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    goto/16 :goto_0

    .line 1836
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1840
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateViewGone()V

    .line 1841
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 1842
    .local v28, "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-nez v2, :cond_1a

    .line 1843
    const-string v2, "id"

    const-string/jumbo v3, "recommend_rooms"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .line 1844
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initRecommendRoomsView()V

    .line 1851
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    invoke-virtual/range {v28 .. v28}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setRecommendRoomsData(Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1846
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->removeAllViews()V

    .line 1847
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .line 1848
    const-string v2, "id"

    const-string/jumbo v3, "recommend_rooms"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    .line 1849
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initRecommendRoomsView()V

    goto :goto_6

    .line 1855
    .end local v28    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_1c
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "MSG_SDK_5_MINUTE[]>>>>>>>>>"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_download_pop_5_show"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1857
    new-instance v2, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$20;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1867
    :sswitch_1d
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "MSG_SDK_10_MINUTE[]>>>>>>>>>"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_download_pop_10_show"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1869
    new-instance v2, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$21;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1879
    :sswitch_1e
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "MSG_SDK_25_MINUTE[]>>>>>>>>>"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_download_pop_15_show"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1881
    new-instance v2, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$22;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1891
    :sswitch_1f
    new-instance v37, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v37, "voteStatusMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->setVoteStatusMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;)V

    goto/16 :goto_0

    .line 1895
    .end local v37    # "voteStatusMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;
    :sswitch_20
    new-instance v38, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;-><init>(Ljava/lang/String;)V

    .line 1896
    .local v38, "voteTopMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->setVoteTopMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;)V

    goto/16 :goto_0

    .line 1899
    .end local v38    # "voteTopMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;
    :sswitch_21
    new-instance v36, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v36, "voteMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->setVoteMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;)V

    goto/16 :goto_0

    .line 1904
    .end local v36    # "voteMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 1905
    .local v34, "urlRes":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual/range {v34 .. v34}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1906
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual/range {v34 .. v34}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1907
    .local v12, "dataObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 1908
    const-string v2, "dl_url"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    .line 1909
    const-string v2, "LaifengLiveRoomActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_GET_PACKAGE_URL_SUCCESS>>>>down load url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->isOpenSilentDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1911
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startSilentDownloadTask()V

    goto/16 :goto_0

    .line 1916
    .end local v12    # "dataObject":Lorg/json/JSONObject;
    :cond_1b
    const-string v2, "LaifengLiveRoomActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_GET_PACKAGE_URL_SUCCESS>>>>but fail, without url, use default url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDefaultDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->isOpenSilentDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startSilentDownloadTask()V

    goto/16 :goto_0

    .line 1923
    .end local v34    # "urlRes":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_23
    const-string v2, "LaifengLiveRoomActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_GET_PACKAGE_URL_FAILED[]>>res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryGetDownloadUrlCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1c

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v3, 0xf012

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1927
    move-object/from16 v0, p0

    iget v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryGetDownloadUrlCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRetryGetDownloadUrlCount:I

    goto/16 :goto_0

    .line 1931
    :cond_1c
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->isOpenSilentDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1932
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startSilentDownloadTask()V

    goto/16 :goto_0

    .line 1937
    :sswitch_24
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "MSG_GET_PACKAGE_URL_RETRY[]>>getDownloadApkUrl---"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getDownloadApkUrl()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 1493
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x13 -> :sswitch_1
        0x15 -> :sswitch_13
        0x16 -> :sswitch_12
        0x17 -> :sswitch_14
        0x19 -> :sswitch_18
        0x20 -> :sswitch_15
        0x22 -> :sswitch_19
        0x23 -> :sswitch_4
        0x24 -> :sswitch_17
        0x25 -> :sswitch_16
        0x26 -> :sswitch_1a
        0x30 -> :sswitch_9
        0x31 -> :sswitch_2
        0x33 -> :sswitch_1b
        0x35 -> :sswitch_8
        0xa500 -> :sswitch_5
        0xa600 -> :sswitch_6
        0xa700 -> :sswitch_7
        0xe000 -> :sswitch_c
        0xe002 -> :sswitch_10
        0xe003 -> :sswitch_d
        0xe004 -> :sswitch_a
        0xe005 -> :sswitch_e
        0xe007 -> :sswitch_b
        0xe008 -> :sswitch_11
        0xe009 -> :sswitch_f
        0xe015 -> :sswitch_1f
        0xe016 -> :sswitch_20
        0xe017 -> :sswitch_21
        0xf001 -> :sswitch_1c
        0xf002 -> :sswitch_1d
        0xf003 -> :sswitch_1e
        0xf010 -> :sswitch_22
        0xf011 -> :sswitch_23
        0xf012 -> :sswitch_24
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendStarButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1972
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1973
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_star_click"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1974
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->sendStar()V

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 1976
    :cond_1
    const/16 v2, 0x11

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    goto :goto_0

    .line 1979
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1981
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v18

    .line 1985
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_3

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1988
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v5, "lf_chat_keyboard_btn_normal"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1989
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_chatbtn_click"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1991
    .end local v18    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnExpression:Landroid/widget/ImageView;

    const-string v3, "drawable"

    const-string v5, "lf_chat_expression_btn_normal"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1996
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_face_click"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1998
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->finish()V

    goto/16 :goto_0

    .line 2000
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 2002
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v18

    .line 2007
    .restart local v18    # "view":Landroid/view/View;
    if-eqz v18, :cond_8

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2010
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/youku/laifeng/sdk/widget/TabViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 2011
    .end local v18    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mShareButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v18

    .line 2016
    .restart local v18    # "view":Landroid/view/View;
    if-eqz v18, :cond_a

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2020
    :cond_a
    sget-object v2, Llfsdk/LFSdkManager;->mCB:Llfsdk/LFSdkManager$LFSdkCallBack;

    if-eqz v2, :cond_0

    .line 2021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.laifeng.com/room/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v5, "rid"

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2022
    .local v7, "jumpUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "faceUrl"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2023
    .local v6, "faceUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "nn"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2024
    .local v15, "nickName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v5, "share_word_actor"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2025
    .local v4, "strDes":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2026
    sget-object v2, Llfsdk/LFSdkManager;->mCB:Llfsdk/LFSdkManager$LFSdkCallBack;

    move-object/from16 v3, p0

    move-object v5, v4

    invoke-interface/range {v2 .. v7}, Llfsdk/LFSdkManager$LFSdkCallBack;->Share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2028
    .end local v4    # "strDes":Ljava/lang/String;
    .end local v6    # "faceUrl":Ljava/lang/String;
    .end local v7    # "jumpUrl":Ljava/lang/String;
    .end local v15    # "nickName":Ljava/lang/String;
    .end local v18    # "view":Landroid/view/View;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 2030
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->isInVisible()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2032
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    .line 2044
    :cond_c
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v18

    .line 2048
    .restart local v18    # "view":Landroid/view/View;
    if-eqz v18, :cond_0

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 2034
    .end local v18    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-nez v2, :cond_c

    .line 2035
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeOut(Landroid/view/View;JJ)V

    goto :goto_1

    .line 2037
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mToolbarContainer:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->isInVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2039
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    goto :goto_1

    .line 2041
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-nez v2, :cond_c

    .line 2042
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mActorExtraInfoLayout:Landroid/widget/LinearLayout;

    const-wide/16 v10, 0x12c

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/youku/laifeng/sdk/util/AnimationController;->fadeIn(Landroid/view/View;JJ)V

    goto/16 :goto_1

    .line 2051
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mFollowButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-ne v2, v3, :cond_13

    .line 2052
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2053
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mIsFollow:Z

    if-eqz v2, :cond_11

    .line 2054
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_unfollow_click"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "aid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->cancelAttentionActor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2057
    :cond_11
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_follow_click"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string v3, "aid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->attentionActor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2061
    :cond_12
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    goto/16 :goto_0

    .line 2064
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnChatSend:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 2065
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v3, "rid"

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mSendBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->sendChatMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2068
    :cond_14
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->showDownloadDialog(I)V

    goto/16 :goto_0

    .line 2071
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2073
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 2074
    invoke-static/range {p0 .. p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2075
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "click download button>>>>>has installed"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-string v2, "LaifengLiveRoomActivity"

    const-string v3, "click download button>>>>>has installed>>>>>>>>launch LAIFENG-APP"

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_download_top_tip_open"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2079
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getAppInstance()Lcom/youku/LaifengSDKApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/LaifengSDKApplication;->getEnterRoomApi()Lcom/youku/api/EventDoApi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    const-string/jumbo v5, "rid"

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/api/EventDoApi;->doEnterLaifengLivingRoom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2082
    :cond_16
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "sdk_download_top_tip_download"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2083
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkIsAPKFileOK()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2084
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->installApk()V

    goto/16 :goto_0

    .line 2086
    :cond_17
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->getCurrentQueueSize()I

    move-result v14

    .line 2087
    .local v14, "downloadTaskSize":I
    const-string v2, "LaifengLiveRoomActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDownloadButton[] click[]>>>download task size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    if-lez v14, :cond_1b

    .line 2089
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1a

    .line 2090
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->getCurrentQueue()Ljava/util/Set;

    move-result-object v17

    .line 2091
    .local v17, "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/laifeng/sdk/download/DownloadRequest;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 2092
    .local v16, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual/range {v16 .. v16}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequestId1:I

    if-ne v3, v5, :cond_19

    .line 2093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadRequest1:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    new-instance v5, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$DefaultDownloadStatusListener;-><init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$1;)V

    invoke-virtual {v3, v5}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadListener(Lcom/youku/laifeng/sdk/download/DownloadStatusListener;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 2095
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v3

    if-nez v3, :cond_18

    .line 2096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_2

    .line 2100
    .end local v16    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .end local v17    # "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/laifeng/sdk/download/DownloadRequest;>;"
    :cond_1a
    invoke-static {}, Lcom/youku/LaifengSDKApplication;->getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->cancelAll()V

    .line 2101
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startDownloadRequestManual()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_0

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    goto/16 :goto_0

    .line 2107
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startDownloadRequestManual()V

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_0

    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    goto/16 :goto_0

    .line 2114
    .end local v14    # "downloadTaskSize":I
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadClose:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2117
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->cancelDownloadRequest()V

    .line 2118
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->removeDownloadLayout()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onCreate(Landroid/os/Bundle;)V

    .line 356
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "sdk_normal_enter"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->pManager:Landroid/os/PowerManager;

    .line 360
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setVolumeControlStream(I)V

    .line 361
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 362
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mInflater:Landroid/view/LayoutInflater;

    const-string v4, "layout"

    const-string v5, "lf_activity_live_room"

    invoke-static {p0, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    .line 363
    iget-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setContentView(Landroid/view/View;)V

    .line 364
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDisplay:Landroid/view/Display;

    .line 365
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getIntentData()V

    .line 366
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initViews()V

    .line 368
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initTabViewPager()V

    .line 371
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 372
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 373
    .local v0, "gprs":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 374
    .local v2, "wifi":Landroid/net/NetworkInfo;
    const/4 v3, -0x1

    iput v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    .line 375
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    iput v7, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    .line 378
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    iput v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    .line 381
    :cond_1
    new-instance v3, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    iget-object v4, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkListener:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    invoke-direct {v3, v4}, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;-><init>(Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    .line 383
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    .line 384
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->sendDownMessage()V

    .line 386
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    .line 387
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 717
    invoke-super {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onDestroy()V

    .line 719
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "sdk_normal_exit"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->clearStarInfo()V

    .line 723
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanStarInfo;->clear()V

    .line 724
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->unbindService()V

    .line 726
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf012

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 727
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf011

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 728
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf010

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 730
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf001

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 731
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf002

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 732
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const v2, 0xf003

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 734
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 736
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mMainView:Landroid/view/View;

    .line 738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDirectResultListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .line 739
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatListener:Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    .line 741
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 743
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionContainer:Landroid/widget/LinearLayout;

    .line 745
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGiftContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 746
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGiftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 748
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDisplay:Landroid/view/Display;

    .line 749
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerArgs:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 752
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 753
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 754
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabContainer:Landroid/widget/LinearLayout;

    .line 757
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 758
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewList:Ljava/util/List;

    .line 762
    :cond_4
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    if-eqz v1, :cond_5

    .line 763
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->removeAllViews()V

    .line 764
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewVote:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .line 766
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    if-eqz v1, :cond_6

    .line 767
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->removeAllViews()V

    .line 768
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .line 769
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mTabViewPager:Lcom/youku/laifeng/sdk/widget/TabViewPager;

    .line 771
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 772
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 773
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerContainer:Landroid/widget/LinearLayout;

    .line 775
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotIcon:[Landroid/widget/ImageView;

    .line 776
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 777
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 778
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionSelectDotContainer:Landroid/widget/LinearLayout;

    .line 779
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mExpressionAdapter:Lcom/youku/laifeng/sdk/adapter/ChatExpressionPageAdapter;

    .line 780
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->clean()V

    .line 782
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;->release()V

    .line 783
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    .line 784
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkListener:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver$OnNetworkStatusListener;

    .line 786
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnChatSend:Landroid/widget/Button;

    if-eqz v1, :cond_9

    .line 787
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    .line 790
    :cond_9
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 791
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mStarCountView:Landroid/widget/TextView;

    .line 795
    :cond_a
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->releaseVideo()V

    .line 797
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    if-eqz v1, :cond_b

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .line 800
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mAnimationController:Lcom/youku/laifeng/sdk/util/AnimationController;

    .line 802
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->getInstance()Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;->stopStarLogic()V

    .line 809
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->cancelDownloadRequest()V

    .line 811
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    if-eqz v1, :cond_c

    .line 812
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->dismiss()V

    .line 813
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_c
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2240
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onNewIntent(Landroid/content/Intent;)V

    .line 584
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setIntent(Landroid/content/Intent;)V

    .line 586
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getIntentData()V

    .line 588
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->clearPreviousRoomMsg()V

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    .line 592
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 2339
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 2307
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2311
    packed-switch p1, :pswitch_data_0

    .line 2334
    :goto_0
    return-void

    .line 2313
    :pswitch_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    const-string v1, "drawable"

    const-string v2, "lf_room_tab_select"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2314
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2315
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2316
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2317
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2318
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2319
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2320
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mLiveHouseChatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2321
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mViewChat:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->smoothScrollToBottom()V

    goto :goto_0

    .line 2324
    :pswitch_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteBg:Landroid/widget/LinearLayout;

    const-string v1, "drawable"

    const-string v2, "lf_room_tab_select"

    invoke-static {p0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2325
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2326
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2327
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mChatTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2328
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2329
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVoteTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2330
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mBtnStarSend:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2331
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mLiveHouseChatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 683
    invoke-super {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onPause()V

    .line 684
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 685
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateViewGone()V

    .line 686
    return-void
.end method

.method public onPlayerCompletion()V
    .locals 4

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 2268
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->stop()V

    .line 2269
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2270
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerCompletion no network"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :goto_0
    return-void

    .line 2273
    :cond_0
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerCompletion[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2276
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStream:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPlayerError(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->stop()V

    .line 2252
    iget v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mNetworkStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 2254
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerError no network"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    :goto_0
    return-void

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerState(I)V

    .line 2259
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerError[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->StreamUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2262
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStream:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPlayerLoadingBegin()V
    .locals 2

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->pause()V

    .line 2282
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVideoLoadingVisible()V

    .line 2283
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerLoadingBegin[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    return-void
.end method

.method public onPlayerLoadingEnd()V
    .locals 2

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mVideoView:Lcom/youku/laifeng/sdk/widget/player/UVideoView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/player/UVideoView;->start()V

    .line 2290
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setVideoLoadingGone()V

    .line 2291
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerLoadingEnd[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    return-void
.end method

.method public onPlayerStarted()V
    .locals 2

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mPlayerStateView:Lcom/youku/laifeng/sdk/widget/PlayerStateView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/PlayerStateView;->setPlayerStateViewGone()V

    .line 2246
    const-string v0, "OnPlayerListener"

    const-string v1, "onPlayerStarted[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 618
    invoke-super {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onResume()V

    .line 619
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 620
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;->reportActivityResume()V

    .line 622
    invoke-static {p0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const-string v0, "LaifengLiveRoomActivity"

    const-string v1, "onResume[]>>>>>laifeng has installed"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadButton:Landroid/widget/Button;

    const-string/jumbo v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherPrev()V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 634
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    .line 655
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 658
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDlgListener:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setOnDownloadDlgListener(Lcom/youku/laifeng/sdk/widget/CommonDialogDownload$OnDownloadDlgClickListener;)V

    .line 660
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->judgeUserRight()V

    .line 662
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->isFollow()V

    .line 664
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setActorInfo()V

    .line 665
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->setTiefenInfo()V

    .line 667
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initTabVew()V

    .line 669
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->startToolbar()V

    .line 671
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    .line 675
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 676
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 677
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 679
    return-void

    .line 637
    :cond_2
    const-string v0, "LaifengLiveRoomActivity"

    const-string v1, "onResume[]>>>>>laifeng has not installed"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->checkIsAPKFileOK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadButton:Landroid/widget/Button;

    const-string/jumbo v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->showSwitcherPrev()V

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 650
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mDownloadSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 552
    invoke-super {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onStart()V

    .line 553
    const-string v1, "LaifengLiveRoomActivity"

    const-string v2, "onStart[]"

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 566
    :goto_0
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->initVideoView()V

    .line 568
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getCpuLevel()I

    move-result v1

    if-lez v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->close()V

    .line 572
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .line 573
    new-instance v1, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    .line 574
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->setPortrait(Z)V

    .line 575
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGiftContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    :cond_1
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->bindService()V

    .line 579
    return-void

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->pManager:Landroid/os/PowerManager;

    const v2, 0x2000000a

    const-string v3, "LaifengLiveRoomActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 690
    invoke-super {p0}, Lcom/youku/laifeng/libcuteroom/base/AbsBaseActvity;->onStop()V

    .line 691
    const-string v0, "LaifengLiveRoomActivity"

    const-string v1, "onStop[]"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->receiver:Lcom/youku/laifeng/libcuteroom/service/NetStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 694
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getStream:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 696
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 697
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->sendEmptyMessage(I)Z

    .line 698
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mHandler:Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/base/BaseSafeHandler;->removeMessages(I)V

    .line 700
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGift2DView:Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/jbox2dShow/Gift2DView;->close()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mGiftContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 705
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mRecommendRoomsView:Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/RecommendRoomsView;->setGone()V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 713
    :cond_2
    return-void
.end method
