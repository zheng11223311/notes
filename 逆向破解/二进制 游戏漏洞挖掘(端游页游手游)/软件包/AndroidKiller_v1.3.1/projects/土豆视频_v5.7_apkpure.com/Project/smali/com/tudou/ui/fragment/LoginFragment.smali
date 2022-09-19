.class public Lcom/tudou/ui/fragment/LoginFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;,
        Lcom/tudou/ui/fragment/LoginFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final CLAZZ_QQ:I = 0x3

.field private static final CLAZZ_SINA:I = 0x2

.field private static final CLAZZ_TAOBAO:I = 0xb

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FIND_PASSWORD_URL:Ljava/lang/String; = "http://login.tudou.com/forget/index.do"

.field public static final GO_ATTENTION:I = 0xc

.field public static final GO_FAV:I = 0x6

.field public static final GO_GIFT_FRAGMENT:I = 0x12

.field public static final GO_LAIFENF:I = 0x10

.field public static final GO_LOCAL:I = 0x5

.field public static final GO_LOGOUT_BACK:I = 0xb

.field public static final GO_MYTUDOU:I = 0x2

.field public static final GO_MYTUDOU_USER:I = 0x8

.field public static final GO_SCAN_LOGIN:I = 0xf

.field public static final GO_SCREENSHOT_COMMENT:I = 0x14

.field public static final GO_SHOOT:I = 0x4

.field public static final GO_SUBSCRIBE:I = 0xd

.field public static final GO_UPLOAD:I = 0x1

.field public static final GO_UPLOADING:I = 0x11

.field public static final GO_UPLOAD_MANAGER:I = 0x3

.field public static final GO_VIDEORECORD_SHARE:I = 0x15

.field public static final GO_VIDEO_RECOMMEND:I = 0x7

.field public static final GO_VIPBUY:I = 0xe

.field public static final GO_YOUKU_ZC:I = 0x13

.field public static final IS_NOT_AUTO_LOGIN:Ljava/lang/String; = "isNotAutoLogin"

.field private static final LOGIN_FAILED:I = 0x3

.field private static final LOGIN_SUCESS_QQ:I = 0x1

.field private static final LOGIN_SUCESS_SINA:I = 0x2

.field private static final LOGIN_SUCESS_TAOBAO:I = 0x4

.field public static final MSG_CHANGE:I = 0x1

.field private static final MSG_GET_VERIFICATION_FAILED:I = 0x2

.field private static final MSG_GET_VERIFICATION_SUCCESS:I = 0x1

.field private static final QQ_LOGIN_KEY:Ljava/lang/String; = "isQQLogined"

.field private static final SINA_LOGIN_KEY:Ljava/lang/String; = "isSinaLogined"

.field public static final Show_ORIENTATION:Ljava/lang/String; = "ORIENTATION"

.field public static final TAG_STR:Ljava/lang/String; = "TAG"

.field private static final TAOBAO_LOGIN_KEY:Ljava/lang/String; = "isTaobaoLogined"

.field private static cps:Ljava/lang/String; = null

.field public static mCurrentStart:I = 0x0

.field private static mRoomId:Ljava/lang/String; = null

.field private static mThreeInfo:Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo; = null

.field public static final resultCodeReload:I = 0xa


# instance fields
.field private isLoginFailed:Z

.field private isNeedReload:Z

.field private isNeedVerify:Z

.field private loginView:Landroid/view/View;

.field private mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

.field private mBtnLogin:Landroid/widget/TextView;

.field private mCancel1:Landroid/view/View;

.field private mCancel2:Landroid/view/View;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mEdtUserName:Landroid/widget/AutoCompleteTextView;

.field private mHandler:Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

.field private mLightShowHandler:Landroid/os/Handler;

.field private mLoginErrorCount:I

.field private mThreeLoginHandler:Landroid/os/Handler;

.field private mThreeLoginViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTxtFindPassword:Landroid/widget/TextView;

.field private mTxtPhoneLogin:Landroid/widget/TextView;

.field private mTxtPhoneRegist:Landroid/widget/TextView;

.field private mVerificationDivideLine:Landroid/view/View;

.field private mVerificationEt:Landroid/widget/EditText;

.field private mVerificationImg:Landroid/widget/ImageView;

.field private mVerificationLayout:Landroid/view/View;

.field private mViewQQ:Landroid/view/View;

.field private mViewSina:Landroid/view/View;

.field private scanView:Landroid/view/View;

.field private taobaoView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "00014643"

    sput-object v0, Lcom/tudou/ui/fragment/LoginFragment;->cps:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->isNeedVerify:Z

    .line 192
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mHandler:Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    .line 819
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/LoginFragment$9;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginHandler:Landroid/os/Handler;

    .line 1330
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/LoginFragment$17;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLightShowHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/LoginFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/LoginFragment;->isNeedVerify:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationDivideLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/LoginFragment;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/LoginFragment;->threeLogin(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeInfo:Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;)Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    .prologue
    .line 93
    sput-object p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeInfo:Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    return-object p0
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/tudou/ui/fragment/LoginFragment;->parseThreeLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 93
    invoke-static {p0}, Lcom/tudou/ui/fragment/LoginFragment;->setYoukuStatus(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/LoginFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$208(Lcom/tudou/ui/fragment/LoginFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mBtnLogin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->requestDoLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/fragment/LoginFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mHandler:Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->autoRemeber()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/LoginFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->isLoginFailed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/LoginFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/LoginFragment;->isLoginFailed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->verify()V

    return-void
.end method

.method public static autoLogin()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1120
    const-string v3, "auto_login"

    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1122
    .local v1, "needAutoLogin":Z
    if-nez v1, :cond_1

    .line 1123
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u81ea\u52a8\u767b\u5f55====\u4e0d\u9700\u8981\u81ea\u52a8\u767b\u5f55"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 1127
    .local v2, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1128
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u81ea\u52a8\u767b\u5f55====\u5df2\u7ecf\u662f\u767b\u5f55\u72b6\u6001"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_2
    const-string v3, "COOKIE"

    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 1133
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto login cookie=========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    sget-object v3, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1135
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->readLocal()V

    .line 1136
    invoke-static {v7}, Lcom/tudou/ui/fragment/LoginFragment;->setYoukuStatus(Z)V

    .line 1137
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 1138
    .local v0, "iLogin":Lcom/youku/service/login/ILogin;
    new-instance v3, Lcom/tudou/ui/fragment/LoginFragment$12;

    invoke-direct {v3}, Lcom/tudou/ui/fragment/LoginFragment$12;-><init>()V

    invoke-interface {v0, v3, v7}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V

    .line 1146
    const-string v3, "isQQLogined"

    invoke-static {v3, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/tudou/android/Youku;->isQQLogined:Z

    .line 1147
    const-string v3, "isSinaLogined"

    invoke-static {v3, v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/tudou/android/Youku;->isSinaLogined:Z

    goto :goto_0
.end method

.method private autoRemeber()V
    .locals 4

    .prologue
    .line 1037
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 1038
    .local v0, "auserBean":Lcom/youku/vo/UserBean;
    const-string v1, "email"

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoRemeber========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method private checkInput()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "email":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 542
    :goto_0
    return v1

    .line 531
    :cond_0
    invoke-static {v0}, Lcom/youku/util/Util;->checkEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/youku/util/Util;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    const v2, 0x7f0d011d

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->isNeedVerify:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    const-string/jumbo v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static clearThreeLogin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 887
    sget-boolean v0, Lcom/tudou/android/Youku;->isQQLogined:Z

    if-eqz v0, :cond_0

    .line 888
    sput-boolean v2, Lcom/tudou/android/Youku;->isQQLogined:Z

    .line 889
    const-string v0, "isQQLogined"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 893
    :cond_0
    sget-boolean v0, Lcom/tudou/android/Youku;->isSinaLogined:Z

    if-eqz v0, :cond_1

    .line 895
    sput-boolean v2, Lcom/tudou/android/Youku;->isSinaLogined:Z

    .line 896
    const-string v0, "isSinaLogined"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 898
    :cond_1
    return-void
.end method

.method private doLogin()V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->checkInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string/jumbo v0, "\u767b\u5f55\u9875\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u90ae\u7bb1\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v1, 0x7f0d0217

    invoke-static {v0, v1}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 397
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    .line 398
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->isNeedVerify:Z

    if-eqz v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->verify()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->requestDoLogin()V

    goto :goto_0
.end method

.method private doRegist()V
    .locals 3

    .prologue
    .line 518
    const-string/jumbo v1, "\u767b\u5f55\u9875\u6ce8\u518c\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u6ce8\u518c"

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v2, Lcom/tudou/ui/activity/PhoneRegistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    sget v2, Lcom/tudou/ui/fragment/LoginFragment;->mCurrentStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method public static genPassword(Ljava/lang/String;)V
    .locals 5
    .param p0, "rawPassword"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 509
    .local v2, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x20

    rsub-int/lit8 v0, v3, 0x20

    .line 510
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v2, v0}, Lcom/youku/vo/UserBean;->setPadding(I)V

    .line 514
    invoke-static {p0}, Lcom/youku/util/AESPlus;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/UserBean;->setPassWord(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public static goLogoutBack(Landroid/app/Activity;)V
    .locals 4
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 1380
    const v2, 0x7f0d00a9

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 1381
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v1

    .line 1382
    .local v1, "login":Lcom/youku/service/login/ILogin;
    invoke-interface {v1}, Lcom/youku/service/login/ILogin;->logout()V

    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1384
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAG"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {p0, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 1386
    return-void
.end method

.method public static goTarget(Landroid/app/Activity;)V
    .locals 4
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1161
    sput-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 1162
    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1163
    sput-boolean v2, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    .line 1164
    sput-boolean v2, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 1165
    sput-boolean v2, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 1166
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->isNeedRefreshMyIcon:Z

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lcom/tudou/ui/fragment/LoginFragment;->mCurrentStart:I

    packed-switch v1, :pswitch_data_0

    .line 1234
    :goto_0
    :pswitch_0
    return-void

    .line 1170
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1171
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1181
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1182
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1185
    :pswitch_3
    invoke-static {p0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShot(Landroid/app/Activity;)V

    goto :goto_0

    .line 1188
    :pswitch_4
    invoke-static {p0}, Lcom/tudou/ui/fragment/UploadFragment;->showLocalVideo(Landroid/app/Activity;)V

    goto :goto_0

    .line 1191
    :pswitch_5
    sput-boolean v2, Lcom/tudou/ui/fragment/MyTudouFragment;->mLoginRefresh:Z

    .line 1192
    sput-boolean v2, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    .line 1193
    sput-boolean v2, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    goto :goto_0

    .line 1200
    :pswitch_6
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 1206
    :pswitch_7
    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1207
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 1210
    :pswitch_8
    sput-boolean v2, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    goto :goto_0

    .line 1213
    :pswitch_9
    sput-boolean v2, Lcom/tudou/ui/fragment/VipBuyFragment;->mRefreshKey:Z

    goto :goto_0

    .line 1216
    :pswitch_a
    sget-object v1, Lcom/tudou/ui/fragment/LoginFragment;->mRoomId:Ljava/lang/String;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getYktk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/laifeng/lfJsObj;->getLaiFengYktk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tudou/ui/fragment/LoginFragment;->cps:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Llfsdk/LFSdkManager;->enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1220
    :pswitch_b
    const/16 v1, 0x12

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1223
    :pswitch_c
    invoke-static {}, Lcom/tudou/webview/WebViewJsObj;->goUrlAfterLogin()V

    goto :goto_0

    .line 1226
    :pswitch_d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1229
    :pswitch_e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 258
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 260
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    const v3, 0x7f0d0215

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    new-instance v3, Lcom/tudou/ui/fragment/LoginFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/LoginFragment$1;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0223

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneRegist:Landroid/widget/TextView;

    .line 280
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneRegist:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneRegist:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0517

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationLayout:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0518

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationEt:Landroid/widget/EditText;

    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0519

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationImg:Landroid/widget/ImageView;

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c051a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationDivideLine:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0515

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    .line 291
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0516

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mBtnLogin:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mBtnLogin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 299
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel1:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel2:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneLogin:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneLogin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 307
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtFindPassword:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtFindPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 314
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel1:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 315
    new-instance v0, Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/AutoCompleteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel2:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 320
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mBtnLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtFindPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->setRemText()V

    .line 328
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewSina:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewQQ:Landroid/view/View;

    .line 330
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0525

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->scanView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    const v1, 0x7f0c0526

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->taobaoView:Landroid/view/View;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewSina:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewQQ:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->scanView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->taobaoView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->setThreeLogin()V

    .line 343
    return-void
.end method

.method private static parseThreeLogin(Ljava/lang/String;)V
    .locals 18
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 975
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    .line 978
    .local v7, "userBean":Lcom/youku/vo/UserBean;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 979
    .local v5, "threeJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "user"

    invoke-static {v5, v13}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 981
    .local v9, "userObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "tudouId"

    invoke-static {v5, v13}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 983
    .local v8, "userId":Ljava/lang/String;
    const-string/jumbo v13, "username"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 984
    .local v10, "username":Ljava/lang/String;
    const-string v13, "nickname"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "nickName":Ljava/lang/String;
    const-string/jumbo v13, "userpic"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 988
    .local v11, "userpic":Ljava/lang/String;
    const-string v13, "isVuser"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    .line 989
    .local v3, "isVuser":Z
    const-string/jumbo v13, "vip_member"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v12

    .line 991
    .local v12, "vip_member":Z
    const-string/jumbo v13, "token"

    invoke-static {v5, v13}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 994
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/youku/vo/UserBean;->setUserId(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v7, v10}, Lcom/youku/vo/UserBean;->setUserName(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v7, v4}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v7, v11}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 998
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/youku/vo/UserBean;->setNeedSetPwd(Z)V

    .line 999
    invoke-virtual {v7, v6}, Lcom/youku/vo/UserBean;->setYktk(Ljava/lang/String;)V

    .line 1001
    iput-boolean v3, v7, Lcom/youku/vo/UserBean;->isVuser:Z

    .line 1002
    iput-boolean v12, v7, Lcom/youku/vo/UserBean;->isVip:Z

    .line 1005
    const-string v13, "mmid"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v7, Lcom/youku/vo/UserBean;->mmid:J

    .line 1006
    const-string/jumbo v13, "vip_platform"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/youku/vo/UserBean;->vip_platform:I

    .line 1007
    const-string/jumbo v13, "vip_grade"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 1008
    const-string/jumbo v13, "vip_year"

    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/youku/vo/UserBean;->vip_year:I

    .line 1009
    iget-wide v14, v7, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v16, 0x186a2

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    iput-boolean v13, v7, Lcom/youku/vo/UserBean;->isVip:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v3    # "isVuser":Z
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v5    # "threeJsonObject":Lorg/json/JSONObject;
    .end local v6    # "token":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    .end local v9    # "userObject":Lorg/json/JSONObject;
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "userpic":Ljava/lang/String;
    .end local v12    # "vip_member":Z
    :goto_1
    return-void

    .line 1009
    .restart local v3    # "isVuser":Z
    .restart local v4    # "nickName":Ljava/lang/String;
    .restart local v5    # "threeJsonObject":Lorg/json/JSONObject;
    .restart local v6    # "token":Ljava/lang/String;
    .restart local v8    # "userId":Ljava/lang/String;
    .restart local v9    # "userObject":Lorg/json/JSONObject;
    .restart local v10    # "username":Ljava/lang/String;
    .restart local v11    # "userpic":Ljava/lang/String;
    .restart local v12    # "vip_member":Z
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 1010
    .end local v3    # "isVuser":Z
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v5    # "threeJsonObject":Lorg/json/JSONObject;
    .end local v6    # "token":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    .end local v9    # "userObject":Lorg/json/JSONObject;
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "userpic":Ljava/lang/String;
    .end local v12    # "vip_member":Z
    :catch_0
    move-exception v2

    .line 1011
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private qqLogin()V
    .locals 5

    .prologue
    .line 679
    const-string/jumbo v1, "\u767b\u5f55\u9875QQ\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string v2, "QQ\u767b\u5f55"

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "com.tencent.mobileqq"

    invoke-static {v1, v2}, Lcom/tudou/videoshare/ShareUtil;->isInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 685
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/fragment/LoginFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/LoginFragment$6;-><init>(Lcom/tudou/ui/fragment/LoginFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 692
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 745
    .end local v0    # "dialog":Lcom/youku/widget/TudouDialog;
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getTencentInstance()Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "get_user_info"

    new-instance v4, Lcom/tudou/ui/fragment/LoginFragment$7;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/LoginFragment$7;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_0
.end method

.method private requestDoLogin()V
    .locals 6

    .prologue
    .line 443
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v1

    .line 444
    .local v1, "login":Lcom/youku/service/login/ILogin;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 445
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "email":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "passWord":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "verification":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/youku/vo/UserBean;->setEmail(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v3, v4}, Lcom/youku/vo/UserBean;->setVcode(Ljava/lang/String;)V

    .line 450
    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->genPassword(Ljava/lang/String;)V

    .line 451
    new-instance v5, Lcom/tudou/ui/fragment/LoginFragment$3;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/LoginFragment$3;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-interface {v1, v3, v5}, Lcom/youku/service/login/ILogin;->login(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 472
    return-void
.end method

.method public static scanAuthorize(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "aCallBack"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 1394
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 1395
    .local v0, "login":Lcom/youku/service/login/ILogin;
    invoke-interface {v0, p0, p1}, Lcom/youku/service/login/ILogin;->scanAuthorize(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 1396
    return-void
.end method

.method public static scanLogin(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "aCallBack"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 1389
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 1390
    .local v0, "login":Lcom/youku/service/login/ILogin;
    invoke-interface {v0, p0, p1}, Lcom/youku/service/login/ILogin;->scanLogin(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 1391
    return-void
.end method

.method public static setFocus(Landroid/widget/EditText;)V
    .locals 1
    .param p0, "aEditText"    # Landroid/widget/EditText;

    .prologue
    const/4 v0, 0x1

    .line 670
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 671
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 672
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 673
    return-void
.end method

.method public static setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V
    .locals 1
    .param p0, "aEditText"    # Landroid/widget/EditText;
    .param p1, "aCancel"    # Landroid/view/View;
    .param p2, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 1238
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$13;

    invoke-direct {v0, p0, p1}, Lcom/tudou/ui/fragment/LoginFragment$13;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1254
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$14;

    invoke-direct {v0, p2, p1, p0}, Lcom/tudou/ui/fragment/LoginFragment$14;-><init>(Landroid/os/Handler;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1276
    return-void
.end method

.method public static setOnFocusChangeListenerForPassword(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V
    .locals 1
    .param p0, "aEditText"    # Landroid/widget/EditText;
    .param p1, "aCancel"    # Landroid/view/View;
    .param p2, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 1280
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/tudou/ui/fragment/LoginFragment$15;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1296
    new-instance v0, Lcom/tudou/ui/fragment/LoginFragment$16;

    invoke-direct {v0, p2, p0, p1}, Lcom/tudou/ui/fragment/LoginFragment$16;-><init>(Landroid/os/Handler;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1328
    return-void
.end method

.method private setRemText()V
    .locals 3

    .prologue
    .line 1153
    const-string v1, "email"

    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 1158
    :cond_0
    return-void
.end method

.method public static setTextEnable(Landroid/widget/TextView;Z)V
    .locals 3
    .param p0, "aTextView"    # Landroid/widget/TextView;
    .param p1, "aEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 1350
    if-eqz p1, :cond_0

    .line 1351
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1353
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1354
    const v0, 0x7f020561

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1362
    :goto_0
    return-void

    .line 1356
    :cond_0
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1358
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1359
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public static setTextVertifyEnable(Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "aTextView"    # Landroid/widget/TextView;
    .param p1, "aEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1365
    if-eqz p1, :cond_0

    .line 1366
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0e0155

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1368
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1369
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1377
    :goto_0
    return-void

    .line 1371
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0e0153

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1373
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1374
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method private setThreeLogin()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 346
    sget-object v5, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v5}, Lcom/youku/vo/TudouSwitchesBean;->getShow3IconList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 347
    sget-object v5, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v5}, Lcom/youku/vo/TudouSwitchesBean;->getShow3IconList()Ljava/util/List;

    move-result-object v1

    .line 348
    .local v1, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/TudouSwitchesBean$Show3Icon;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 349
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 350
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 351
    .local v3, "itemView":Landroid/view/View;
    if-ge v0, v4, :cond_0

    .line 352
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    .line 353
    .local v2, "itemIcon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-direct {p0, v3, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setThreeLoginInfo(Landroid/view/View;Lcom/youku/vo/TudouSwitchesBean$Show3Icon;)V

    .line 349
    .end local v2    # "itemIcon":Lcom/youku/vo/TudouSwitchesBean$Show3Icon;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 361
    .end local v0    # "i":I
    .end local v1    # "icons":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/TudouSwitchesBean$Show3Icon;>;"
    .end local v3    # "itemView":Landroid/view/View;
    .end local v4    # "len":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v6, :cond_2

    .line 362
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment;->mThreeLoginViews:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 363
    .restart local v3    # "itemView":Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 366
    .end local v3    # "itemView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setThreeLoginInfo(Landroid/view/View;Lcom/youku/vo/TudouSwitchesBean$Show3Icon;)V
    .locals 2
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "icon"    # Lcom/youku/vo/TudouSwitchesBean$Show3Icon;

    .prologue
    .line 370
    const v1, 0x7f0c0523

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    .local v0, "aImageView":Landroid/widget/ImageView;
    iget v1, p2, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    packed-switch v1, :pswitch_data_0

    .line 388
    :goto_0
    iget v1, p2, Lcom/youku/vo/TudouSwitchesBean$Show3Icon;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    return-void

    .line 374
    :pswitch_0
    const v1, 0x7f020566

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 377
    :pswitch_1
    const v1, 0x7f020564

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 380
    :pswitch_2
    const v1, 0x7f020565

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 383
    :pswitch_3
    const v1, 0x7f020567

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setYoukuStatus(Z)V
    .locals 4
    .param p0, "isAutoLogin"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1016
    const-string v1, "auto_login"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1017
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 1018
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v0, v3}, Lcom/youku/vo/UserBean;->setLogin(Z)V

    .line 1019
    if-nez p0, :cond_0

    .line 1020
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->saveLocal()V

    .line 1021
    const-string v1, "TAG_TUDOU"

    const-string v2, "not auto  login"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :goto_0
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/android/Youku;->userName:Ljava/lang/String;

    .line 1027
    const-string/jumbo v1, "userName"

    sget-object v2, Lcom/tudou/android/Youku;->userName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v1, "isLogined"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1033
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setSyn()V

    .line 1034
    return-void

    .line 1023
    :cond_0
    sput-boolean v3, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    goto :goto_0
.end method

.method private taobaoLogin()V
    .locals 3

    .prologue
    .line 653
    const-class v1, Lcom/alibaba/sdk/android/login/LoginService;

    invoke-static {v1}, Lcom/alibaba/sdk/android/AlibabaSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/login/LoginService;

    .line 654
    .local v0, "service":Lcom/alibaba/sdk/android/login/LoginService;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/LoginFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/LoginFragment$5;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/login/LoginService;->showLogin(Landroid/app/Activity;Lcom/alibaba/sdk/android/login/callback/LoginCallback;)V

    .line 667
    return-void
.end method

.method private threeLogin(ILjava/lang/String;I)V
    .locals 5
    .param p1, "clazz"    # I
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "sucess"    # I

    .prologue
    const/4 v4, 0x1

    .line 902
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0d0217

    invoke-static {v2, v3}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 903
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 905
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getThreeLogin(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 907
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/LoginFragment$10;

    invoke-direct {v2, p0, p3}, Lcom/tudou/ui/fragment/LoginFragment$10;-><init>(Lcom/tudou/ui/fragment/LoginFragment;I)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 933
    return-void
.end method

.method public static updateCookie()V
    .locals 4

    .prologue
    .line 1087
    const-string v2, "auto_login"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1089
    .local v1, "needAutoLogin":Z
    if-nez v1, :cond_0

    .line 1090
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u66f4\u65b0coookie====\u4e0d\u9700\u8981\u81ea\u52a8\u767b\u5f55 \u4e0d\u5fc5\u66f4\u65b0cookie"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1094
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u66f4\u65b0coookie====\u65e0\u7f51"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_1
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 1104
    .local v0, "login":Lcom/youku/service/login/ILogin;
    new-instance v2, Lcom/tudou/ui/fragment/LoginFragment$11;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/LoginFragment$11;-><init>()V

    invoke-interface {v0, v2}, Lcom/youku/service/login/ILogin;->autoLogin(Lcom/youku/service/login/ILogin$ICallBack;)V

    goto :goto_0
.end method

.method private verify()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 407
    const-string/jumbo v4, "request_verification"

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/http/TudouURLContainer;->getLoginVerificationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "giftUrl":Ljava/lang/String;
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 413
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/youku/network/HttpIntent;

    invoke-direct {v2, v1, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 414
    .local v2, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v4, Lcom/tudou/ui/fragment/LoginFragment$2;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/LoginFragment$2;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-interface {v3, v2, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 549
    const-string v0, "Youku"

    const-string v1, "LoginFragment onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0d02c3

    .line 563
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mBtnLogin:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->doLogin()V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneRegist:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->doRegist()V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewSina:Landroid/view/View;

    if-eq p1, v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mViewQQ:Landroid/view/View;

    if-eq p1, v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->scanView:Landroid/view/View;

    if-eq p1, v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->taobaoView:Landroid/view/View;

    if-ne p1, v4, :cond_7

    .line 568
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 569
    .local v3, "tag":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 572
    :pswitch_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_4

    .line 573
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 576
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->sinaLogin()V

    goto :goto_0

    .line 579
    :pswitch_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_5

    .line 580
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 583
    :cond_5
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->qqLogin()V

    goto :goto_0

    .line 586
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "refercode"

    const-string v5, "find|scan"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v4, "\u767b\u5f55\u9875\u9762\u626b\u4e00\u626b\u6309\u94ae\u70b9\u51fb "

    const-class v5, Lcom/tudou/ui/fragment/LoginFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u767b\u5f55\u9875-\u626b\u4e00\u626b\u70b9\u51fb"

    invoke-static {v4, v5, v6, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 590
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 591
    .local v2, "m1":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v5, Lcom/zijunlin/Zxing/CaptureActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 592
    const-string v4, "TAG"

    const/16 v5, 0xf

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 594
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v4, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 597
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "m1":Landroid/content/Intent;
    :pswitch_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_6

    .line 598
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 601
    :cond_6
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->taobaoLogin()V

    goto/16 :goto_0

    .line 614
    .end local v3    # "tag":I
    :cond_7
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel1:Landroid/view/View;

    if-ne p1, v4, :cond_8

    .line 615
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtUserName:Landroid/widget/AutoCompleteTextView;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 617
    :cond_8
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mCancel2:Landroid/view/View;

    if-ne p1, v4, :cond_9

    .line 618
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 620
    :cond_9
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtPhoneLogin:Landroid/widget/TextView;

    if-ne p1, v4, :cond_a

    .line 621
    const-string/jumbo v4, "\u767b\u9646\u9875\u77ed\u4fe1\u9a8c\u8bc1\u767b\u9646\u70b9\u51fb"

    const-string v5, "login|MessageLogin"

    invoke-static {v4, v5}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEventExtend(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/tudou/ui/activity/PhoneLoginActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "TAG"

    sget v5, Lcom/tudou/ui/fragment/LoginFragment;->mCurrentStart:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f040005

    const v6, 0x7f040004

    invoke-static {v4, v1, v5, v6}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 635
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mTxtFindPassword:Landroid/widget/TextView;

    if-ne p1, v4, :cond_b

    .line 636
    const-string/jumbo v4, "\u767b\u9646\u9875\u5fd8\u8bb0\u5bc6\u7801\u70b9\u51fb"

    const-string v5, "login|ForgetPassWord"

    invoke-static {v4, v5}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEventExtend(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "http://login.tudou.com/forget/index.do"

    invoke-static {v4, v5, v6}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 639
    :cond_b
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment;->mVerificationImg:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_0

    .line 640
    iput-boolean v6, p0, Lcom/tudou/ui/fragment/LoginFragment;->isLoginFailed:Z

    .line 641
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->verify()V

    goto/16 :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 239
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/tudou/ui/fragment/LoginFragment;->mCurrentStart:I

    .line 243
    sget v1, Lcom/tudou/ui/fragment/LoginFragment;->mCurrentStart:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 244
    const-string/jumbo v1, "room_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/LoginFragment;->mRoomId:Ljava/lang/String;

    .line 245
    const-string v1, "cps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/ui/fragment/LoginFragment;->cps:Ljava/lang/String;

    .line 247
    :cond_0
    const-string v1, "isNeedReload"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->isNeedReload:Z

    .line 248
    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 249
    const-string v1, "Youku"

    const-string v2, "LoginFragment onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const v1, 0x7f030125

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->initView()V

    .line 252
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment;->loginView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/LoginFragment;->mLoginErrorCount:I

    .line 555
    invoke-direct {p0}, Lcom/tudou/ui/fragment/LoginFragment;->initTitle()V

    .line 556
    const-string v0, "Youku"

    const-string v1, "LoginFragment onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 559
    return-void
.end method

.method public setVerificationImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    .line 475
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 476
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 477
    .local v0, "loader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v1, Lcom/tudou/ui/fragment/LoginFragment$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/tudou/ui/fragment/LoginFragment$4;-><init>(Lcom/tudou/ui/fragment/LoginFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 505
    return-void
.end method

.method public sinaLogin()V
    .locals 3

    .prologue
    .line 760
    const-string/jumbo v0, "\u767b\u5f55\u9875\u65b0\u6d6a\u5fae\u535a\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u65b0\u6d6a\u5fae\u535a\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/LoginActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/tudou/videoshare/SinaShare;->getInstance()Lcom/tudou/videoshare/SinaShare;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/LoginFragment$8;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/LoginFragment$8;-><init>(Lcom/tudou/ui/fragment/LoginFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/tudou/videoshare/SinaShare;->authorize(Landroid/app/Activity;Lcom/tudou/videoshare/SinaShare$IAuthCallBack;)V

    .line 817
    return-void
.end method
