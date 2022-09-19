.class public Lcom/tudou/detail/widget/DetailSubPanel;
.super Landroid/widget/FrameLayout;
.source "DetailSubPanel.java"

# interfaces
.implements Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;
.implements Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/DetailSubPanel$PageState;,
        Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;
    }
.end annotation


# static fields
.field public static HEIGHT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbacks:Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

.field private mCurFragment:Landroid/app/Fragment;

.field private mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mOnSubFragmentCloseListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/tudou/detail/widget/DetailSubPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/DetailSubPanel$1;-><init>(Lcom/tudou/detail/widget/DetailSubPanel;)V

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    .line 80
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailSubPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mFragmentManager:Landroid/app/FragmentManager;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/tudou/detail/widget/DetailSubPanel;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/DetailSubPanel;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/DetailSubPanel;)Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/DetailSubPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getCurrentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getCurrentState()Lcom/tudou/detail/widget/DetailSubPanel$PageState;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    return-object v0
.end method

.method public initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Lcom/tudou/detail/widget/DetailSubPanel$PageState;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 126
    return-void
.end method

.method public initialize(Lcom/tudou/detail/widget/DetailSubPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 6
    .param p1, "state"    # Lcom/tudou/detail/widget/DetailSubPanel$PageState;
    .param p2, "b"    # Landroid/os/Bundle;
    .param p3, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v5, 0x1

    .line 129
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v4, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v3, v4, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/android/chat/ChatFragment;

    .line 131
    .local v0, "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatFragment;->onChatFragmentClose()V

    .line 133
    .end local v0    # "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment([Ljava/lang/Class;)V

    .line 134
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 135
    .local v2, "tTransaction":Landroid/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 136
    .local v1, "fragment":Landroid/app/Fragment;
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_2

    .line 137
    new-instance v1, Lcom/tudou/detail/fragment/VideoBriefFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoBriefFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 138
    check-cast v3, Lcom/tudou/detail/fragment/VideoBriefFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoBriefFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    .line 206
    iput-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    .line 207
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailSubPanel;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 208
    return-void

    .line 141
    :cond_2
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_3

    .line 142
    new-instance v1, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 143
    check-cast v3, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    invoke-virtual {v3, p0}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setOnFeatureItemClickListener(Lcom/tudou/detail/fragment/VideoFeatureFragment$OnFeatureItemClickListener;)V

    move-object v3, v1

    .line 144
    check-cast v3, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 146
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_4

    .line 148
    new-instance v1, Lcom/tudou/detail/fragment/VideoCommentFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 149
    check-cast v3, Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    move-object v3, v1

    .line 150
    check-cast v3, Lcom/tudou/detail/fragment/VideoCommentFragment;

    new-instance v4, Lcom/tudou/detail/widget/DetailSubPanel$2;

    invoke-direct {v4, p0}, Lcom/tudou/detail/widget/DetailSubPanel$2;-><init>(Lcom/tudou/detail/widget/DetailSubPanel;)V

    iput-object v4, v3, Lcom/tudou/detail/fragment/VideoCommentFragment;->mOnSendCommentComplete:Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;

    .line 158
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 159
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 160
    :cond_4
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_6

    .line 161
    if-nez p3, :cond_5

    .line 162
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 164
    :cond_5
    new-instance v1, Lcom/tudou/detail/fragment/VideoPointFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1, p3}, Lcom/tudou/detail/fragment/VideoPointFragment;-><init>(Lcom/youku/player/module/VideoUrlInfo;)V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 165
    check-cast v3, Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v3, p0}, Lcom/tudou/detail/fragment/VideoPointFragment;->setOnPointItemClickListener(Lcom/tudou/detail/fragment/VideoPointFragment$OnPointItemClickListener;)V

    move-object v3, v1

    .line 166
    check-cast v3, Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoPointFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 169
    :cond_6
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_7

    .line 170
    new-instance v1, Lcom/tudou/detail/fragment/VideoCacheFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 171
    check-cast v3, Lcom/tudou/detail/fragment/VideoCacheFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 173
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->GIFT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_8

    .line 175
    new-instance v1, Lcom/tudou/ui/fragment/GiftFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/ui/fragment/GiftFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/app/Fragment;
    move-object v3, v1

    .line 176
    check-cast v3, Lcom/tudou/ui/fragment/GiftFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/ui/fragment/GiftFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    move-object v3, v1

    .line 177
    check-cast v3, Lcom/tudou/ui/fragment/GiftFragment;

    new-instance v4, Lcom/tudou/detail/widget/DetailSubPanel$3;

    invoke-direct {v4, p0}, Lcom/tudou/detail/widget/DetailSubPanel$3;-><init>(Lcom/tudou/detail/widget/DetailSubPanel;)V

    invoke-virtual {v3, v4}, Lcom/tudou/ui/fragment/GiftFragment;->setLoginListener(Lcom/tudou/ui/fragment/GiftFragment$LoginListener;)V

    .line 183
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->ACTOR:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_9

    .line 185
    new-instance v1, Lcom/tudou/detail/fragment/VideoActorFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;-><init>()V

    .line 186
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v1

    .line 187
    check-cast v3, Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 189
    :cond_9
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->SELECTNESS:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_a

    .line 190
    new-instance v1, Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;-><init>()V

    .line 191
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v1

    .line 192
    check-cast v3, Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 194
    :cond_a
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_b

    .line 195
    new-instance v1, Lcom/tudou/detail/fragment/VideoVoteFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/detail/fragment/VideoVoteFragment;-><init>()V

    .line 196
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v1

    .line 197
    check-cast v3, Lcom/tudou/detail/fragment/VideoVoteFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/fragment/VideoVoteFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 199
    :cond_b
    sget-object v3, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne p1, v3, :cond_1

    .line 200
    new-instance v1, Lcom/tudou/android/chat/ChatFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/tudou/android/chat/ChatFragment;-><init>()V

    .line 201
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v1

    .line 202
    check-cast v3, Lcom/tudou/android/chat/ChatFragment;

    iget-object v4, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mOnSubFragmentCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/tudou/android/chat/ChatFragment;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto/16 :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "handle":Z
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/tudou/android/chat/ChatFragment;

    if-eqz v3, :cond_0

    .line 87
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/android/chat/ChatFragment;

    .line 89
    .local v0, "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatFragment;->showFloatIcon()V

    .line 92
    .end local v0    # "chatFragment":Lcom/tudou/android/chat/ChatFragment;
    :cond_0
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 93
    .local v2, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 94
    iget-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 95
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    .line 96
    const/4 v1, 0x1

    .line 98
    .end local v2    # "tTransaction":Landroid/app/FragmentTransaction;
    :cond_1
    return v1
.end method

.method public onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "f"    # Lcom/tudou/detail/vo/DetailFeature$Feature;
    .param p3, "position"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;->onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)Z

    .line 258
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 75
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailSubPanel;->getHeight()I

    move-result v0

    sput v0, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    .line 76
    return-void
.end method

.method public onPointItemClick(Ljava/lang/String;I)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tudou/detail/widget/DetailSubPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    .line 213
    .local v2, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "tCurVid":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    .line 216
    .local v0, "mMediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    sget-object v4, Lcom/tudou/detail/widget/DetailSubPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPointItemClick tCurVid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", vid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "t1.detail_sdetail.focusvideoclick__.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    .line 222
    .local v1, "mediaplayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 224
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v4}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    iget-object v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "episodes"

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    iget-object v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v4

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v5, v5, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v4, v5, :cond_1

    .line 229
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    .line 251
    .end local v0    # "mMediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    .end local v1    # "mediaplayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    .end local v3    # "tCurVid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local v0    # "mMediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    .restart local v1    # "mediaplayer":Lcom/youku/player/plugin/MediaPlayerDelegate;
    .restart local v3    # "tCurVid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    .line 244
    :cond_2
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v2, p2, v4}, Lcom/tudou/ui/activity/DetailActivity;->seekTo(IZ)V

    goto :goto_0

    .line 236
    :cond_3
    div-int/lit16 v4, p2, 0x3e8

    iget-object v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v5, v5, Lcom/youku/player/module/PayInfo$Trial;->time:I

    if-lt v4, v5, :cond_4

    .line 237
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->clearPayPage()V

    goto :goto_1

    .line 246
    :cond_5
    const-string/jumbo v4, "\u5e7f\u544a\u4e2d"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllFragment()V
    .locals 3

    .prologue
    .line 102
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 103
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    const-class v2, Lcom/tudou/android/chat/ChatFragment;

    aput-object v2, v0, v1

    .line 104
    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/DetailSubPanel;->removeAllFragment([Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public removeAllFragment([Ljava/lang/Class;)V
    .locals 8
    .param p1, "exclude"    # [Ljava/lang/Class;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 108
    iget-object v5, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    if-eqz p1, :cond_2

    .line 110
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 111
    .local v3, "s":Ljava/lang/Class;
    iget-object v5, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_1

    .line 122
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-void

    .line 110
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "s":Ljava/lang/Class;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Ljava/lang/Class;
    :cond_2
    iget-object v5, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 117
    .local v4, "tTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v4, v6, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 118
    iget-object v5, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    iput-object v7, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    .line 120
    iput-object v7, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    goto :goto_1
.end method

.method public setCallbacks(Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCallbacks:Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;

    .line 70
    return-void
.end method

.method public setCurrentVid(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    .line 263
    .local v0, "featureFragment":Lcom/tudou/detail/fragment/VideoFeatureFragment;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setSelection(Ljava/lang/String;)V

    .line 265
    .end local v0    # "featureFragment":Lcom/tudou/detail/fragment/VideoFeatureFragment;
    :cond_0
    return-void
.end method

.method public setCurrentVideo(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoCacheFragment;

    if-eqz v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoCacheFragment;

    .line 270
    .local v0, "cacheFragment":Lcom/tudou/detail/fragment/VideoCacheFragment;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoCacheFragment;->setCurrentVid(Ljava/lang/String;)V

    .line 278
    .end local v0    # "cacheFragment":Lcom/tudou/detail/fragment/VideoCacheFragment;
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoCommentFragment;

    if-eqz v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoCommentFragment;

    .line 273
    .local v0, "cacheFragment":Lcom/tudou/detail/fragment/VideoCommentFragment;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->setCurrentVid(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v0    # "cacheFragment":Lcom/tudou/detail/fragment/VideoCommentFragment;
    :cond_2
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoPointFragment;

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoPointFragment;

    .line 276
    .local v0, "cacheFragment":Lcom/tudou/detail/fragment/VideoPointFragment;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/fragment/VideoPointFragment;->setData(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method public setDetailFeature(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/tudou/detail/vo/DetailFeature;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    if-eqz v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoFeatureFragment;

    .line 283
    .local v0, "featureFragment":Lcom/tudou/detail/fragment/VideoFeatureFragment;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/fragment/VideoFeatureFragment;->setData(Lcom/tudou/detail/vo/DetailFeature;)V

    .line 285
    .end local v0    # "featureFragment":Lcom/tudou/detail/fragment/VideoFeatureFragment;
    :cond_0
    return-void
.end method

.method public setLoginState(ZLcom/youku/vo/UserBean;)V
    .locals 3
    .param p1, "login"    # Z
    .param p2, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoCommentFragment;

    if-eqz v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoCommentFragment;

    .line 302
    .local v0, "cacheFragment":Lcom/tudou/detail/fragment/VideoCommentFragment;
    :try_start_0
    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->setLoginState(ZLcom/youku/vo/UserBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "cacheFragment":Lcom/tudou/detail/fragment/VideoCommentFragment;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v0    # "cacheFragment":Lcom/tudou/detail/fragment/VideoCommentFragment;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 3
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurState:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/tudou/detail/fragment/VideoBriefFragment;

    if-eqz v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tudou/detail/widget/DetailSubPanel;->mCurFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/tudou/detail/fragment/VideoBriefFragment;

    .line 294
    .local v0, "briefFragment":Lcom/tudou/detail/fragment/VideoBriefFragment;
    invoke-virtual {v0, p1}, Lcom/tudou/detail/fragment/VideoBriefFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail;)V

    .line 296
    .end local v0    # "briefFragment":Lcom/tudou/detail/fragment/VideoBriefFragment;
    :cond_0
    return-void
.end method
