.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;
.super Landroid/app/Fragment;
.source "FullScreenFragmentVote.java"


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_CURRENT_POSITION:Ljava/lang/String; = "bundle.current.position"

.field public static final BUNDLE_VOTES:Ljava/lang/String; = "bundle.votes"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnVote:Landroid/widget/Button;

.field private mHintLayout:Landroid/view/View;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mHintVote:Landroid/view/View;

.field private mLoading:Landroid/view/View;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field mSharePreference:Landroid/content/SharedPreferences;

.field private mVoteDetailLayout:Landroid/view/View;

.field private mVoteDetailTitle:Landroid/widget/TextView;

.field private mVoteInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVoteItemList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->fetchVoteResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mBtnVote:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintVote:Landroid/view/View;

    return-object v0
.end method

.method private fetchVoteResult()V
    .locals 4

    .prologue
    .line 158
    new-instance v2, Lcom/tudou/detail/DetailModel;

    invoke-direct {v2}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 159
    .local v2, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteItemList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    .line 160
    .local v1, "tAdapter":Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;
    iget-object v0, v1, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    .line 161
    .local v0, "info":Lcom/tudou/detail/vo/VoteInfo;
    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;

    invoke-direct {v3, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;)V

    invoke-virtual {v2, v0, v3}, Lcom/tudou/detail/DetailModel;->voteResult(Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getMatchVote(Ljava/util/ArrayList;I)Lcom/tudou/detail/vo/VoteInfo;
    .locals 11
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;I)",
            "Lcom/tudou/detail/vo/VoteInfo;"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    const/4 v10, -0x1

    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, "ret":Lcom/tudou/detail/vo/VoteInfo;
    const/4 v8, -0x1

    .line 244
    .local v8, "voteBeforeMs":I
    const/4 v7, -0x1

    .line 245
    .local v7, "voteAfterMs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VoteInfo;

    .line 247
    .local v1, "info":Lcom/tudou/detail/vo/VoteInfo;
    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    .line 248
    .local v6, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 249
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/detail/vo/VoteInfo$Selection;

    .line 250
    .local v5, "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    if-ge v9, p2, :cond_1

    .line 251
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    sub-int v2, p2, v9

    .line 252
    .local v2, "interval":I
    if-eq v8, v10, :cond_0

    if-ge v2, v8, :cond_1

    .line 253
    :cond_0
    move v8, v2

    .line 254
    move-object v4, v1

    .line 248
    .end local v2    # "interval":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    .end local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .end local v3    # "j":I
    .end local v6    # "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    :cond_3
    if-nez v4, :cond_7

    .line 260
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 261
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VoteInfo;

    .line 262
    .restart local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    .line 263
    .restart local v6    # "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 264
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/detail/vo/VoteInfo$Selection;

    .line 265
    .restart local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    if-le v9, p2, :cond_5

    .line 266
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    sub-int v2, v9, p2

    .line 267
    .restart local v2    # "interval":I
    if-eq v7, v10, :cond_4

    if-ge v2, v7, :cond_5

    .line 268
    :cond_4
    move v7, v2

    .line 269
    move-object v4, v1

    .line 263
    .end local v2    # "interval":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 260
    .end local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    .end local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .end local v3    # "j":I
    .end local v6    # "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    :cond_7
    return-object v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 217
    sget-object v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v6, "onActivityCreated"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "Detail.vote"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mSharePreference:Landroid/content/SharedPreferences;

    .line 219
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 221
    const-string v5, "bundle.votes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteInfos:Ljava/util/ArrayList;

    .line 222
    const-string v5, "bundle.current.position"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "tPosition":I
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 224
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getMatchVote(Ljava/util/ArrayList;I)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v1

    .line 225
    .local v1, "info":Lcom/tudou/detail/vo/VoteInfo;
    if-eqz v1, :cond_0

    .line 226
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailTitle:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteItemList:Landroid/widget/ListView;

    new-instance v6, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VoteInfo;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mSharePreference:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 230
    .local v2, "tLastTime":J
    sget-object v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tLastTime = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", > 30 = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide v10, 0x9a7ec800L

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interval = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 30 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide v8, 0x9a7ec800L

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide v8, 0x9a7ec800L

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 233
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->showLoading(ZZ)V

    .line 234
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->fetchVoteResult()V

    .line 239
    .end local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .end local v2    # "tLastTime":J
    .end local v4    # "tPosition":I
    :cond_0
    return-void

    .line 230
    .restart local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .restart local v2    # "tLastTime":J
    .restart local v4    # "tPosition":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 8
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x43820000    # 260.0f

    const/4 v3, 0x0

    .line 199
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    if-ne p3, v7, :cond_0

    .line 204
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 205
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 206
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v7

    .line 207
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 208
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 205
    goto :goto_1

    .line 206
    :cond_3
    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const v1, 0x7f0300d7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 313
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 307
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 319
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 295
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 288
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 282
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 301
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const v0, 0x7f0c0401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailLayout:Landroid/view/View;

    .line 102
    const v0, 0x7f0c0400

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailTitle:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0c0405

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteItemList:Landroid/widget/ListView;

    .line 104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteItemList:Landroid/widget/ListView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    const v0, 0x7f0c0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintLayout:Landroid/view/View;

    .line 142
    const v0, 0x7f0c0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mBtnVote:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0c0404

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintVote:Landroid/view/View;

    .line 145
    const v0, 0x7f0c0406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mLoading:Landroid/view/View;

    .line 146
    const v0, 0x7f0c0407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    .line 147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mOnCloseListener:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 180
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    if-nez p2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
