.class public Lio/rong/imkit/fragment/PublicServiceProfileFragment;
.super Lio/rong/imkit/fragment/DispatchResultFragment;
.source "PublicServiceProfileFragment.java"


# static fields
.field public static final AGS_PUBLIC_ACCOUNT_INFO:Ljava/lang/String; = "arg_public_account_info"


# instance fields
.field private mAccountTV:Landroid/widget/TextView;

.field private mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mDescriptionTV:Landroid/widget/TextView;

.field private mEnterBtn:Landroid/widget/Button;

.field private mFollowBtn:Landroid/widget/Button;

.field private mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

.field private mNameTV:Landroid/widget/TextView;

.field private mPortraitIV:Lio/rong/imkit/widget/AsyncImageView;

.field mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

.field private mTargetId:Ljava/lang/String;

.field private mUnfollowBtn:Landroid/widget/Button;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;
    .param p1, "x1"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->initData(Lio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imkit/widget/LoadingDialogFragment;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private initData(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 10
    .param p1, "info"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 132
    if-eqz p1, :cond_0

    .line 134
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPortraitIV:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v4, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 135
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mNameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mAccountTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$string;->rc_pub_service_info_account:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mDescriptionTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getIntroduction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->isFollow()Z

    move-result v1

    .line 140
    .local v1, "isFollow":Z
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->isGlobal()Z

    move-result v2

    .line 142
    .local v2, "isGlobal":Z
    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 144
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-static {}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->newInstance()Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 147
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    new-instance v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$2;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$2;-><init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    new-instance v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;-><init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    new-instance v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;-><init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .end local v1    # "isFollow":Z
    .end local v2    # "isGlobal":Z
    :cond_0
    return-void

    .line 152
    .restart local v1    # "isFollow":Z
    .restart local v2    # "isGlobal":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 154
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v3, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-static {}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->newInstance()Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 161
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "arg_public_account_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/PublicServiceProfile;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    if-nez v1, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "typeStr":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 61
    const-string/jumbo v1, "targetId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mTargetId:Ljava/lang/String;

    .line 62
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->name:Ljava/lang/String;

    .line 70
    .end local v0    # "typeStr":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 59
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 65
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mTargetId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 75
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_public_service_inf:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->portrait:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPortraitIV:Lio/rong/imkit/widget/AsyncImageView;

    .line 78
    sget v1, Lio/rong/imkit/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mNameTV:Landroid/widget/TextView;

    .line 79
    sget v1, Lio/rong/imkit/R$id;->account:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mAccountTV:Landroid/widget/TextView;

    .line 80
    sget v1, Lio/rong/imkit/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mDescriptionTV:Landroid/widget/TextView;

    .line 81
    sget v1, Lio/rong/imkit/R$id;->enter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;

    .line 82
    sget v1, Lio/rong/imkit/R$id;->follow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;

    .line 83
    sget v1, Lio/rong/imkit/R$id;->unfollow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;

    .line 85
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/DispatchResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    const-string v1, ""

    invoke-virtual {p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_data_is_loading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/widget/LoadingDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/widget/LoadingDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    .line 93
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mPublicAccountInfo:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {p0, v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->initData(Lio/rong/imlib/model/PublicServiceProfile;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mTargetId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "publicServiceType":Lio/rong/imlib/model/Conversation$PublicServiceType;
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v1, v2, :cond_2

    .line 99
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 105
    :goto_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mTargetId:Ljava/lang/String;

    new-instance v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;-><init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v1, v2, :cond_3

    .line 101
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    goto :goto_1

    .line 103
    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "the public service type is error!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method
