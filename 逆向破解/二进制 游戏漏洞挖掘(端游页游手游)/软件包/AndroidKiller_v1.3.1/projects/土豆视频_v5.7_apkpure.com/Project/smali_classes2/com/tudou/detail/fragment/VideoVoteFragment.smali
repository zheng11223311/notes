.class public Lcom/tudou/detail/fragment/VideoVoteFragment;
.super Landroid/app/Fragment;
.source "VideoVoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/fragment/VideoVoteFragment$OnFeatureItemClickListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_CURRENT_POSITION:Ljava/lang/String; = "bundle.video.position"

.field public static final BUNDLE_VIDEO_VOTE:Ljava/lang/String; = "bundle.video.vote"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHintView:Lcom/youku/widget/HintView;

.field private mHintVote:Landroid/view/View;

.field private mLoading:Landroid/view/View;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field mSharePreference:Landroid/content/SharedPreferences;

.field private mTitleLayout:Landroid/view/View;

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
    .line 60
    const-class v0, Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/fragment/VideoVoteFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoVoteFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoVoteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoVoteFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->fetchVoteResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/detail/fragment/VideoVoteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoVoteFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintVote:Landroid/view/View;

    return-object v0
.end method

.method private fetchVoteResult()V
    .locals 4

    .prologue
    .line 197
    new-instance v2, Lcom/tudou/detail/DetailModel;

    invoke-direct {v2}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 198
    .local v2, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteItemList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    .line 199
    .local v1, "tAdapter":Lcom/tudou/detail/adapter/VideoVoteItemAdapter;
    iget-object v0, v1, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    .line 200
    .local v0, "info":Lcom/tudou/detail/vo/VoteInfo;
    new-instance v3, Lcom/tudou/detail/fragment/VideoVoteFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/tudou/detail/fragment/VideoVoteFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoVoteFragment;Lcom/tudou/detail/adapter/VideoVoteItemAdapter;)V

    invoke-virtual {v2, v0, v3}, Lcom/tudou/detail/DetailModel;->voteResult(Lcom/tudou/detail/vo/VoteInfo;Lcom/tudou/detail/DetailModel$OnVoteResultGettedListener;)V

    .line 214
    return-void
.end method

.method private updateView()V
    .locals 0

    .prologue
    .line 89
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

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, "ret":Lcom/tudou/detail/vo/VoteInfo;
    const/4 v8, -0x1

    .line 281
    .local v8, "voteBeforeMs":I
    const/4 v7, -0x1

    .line 282
    .local v7, "voteAfterMs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 283
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VoteInfo;

    .line 284
    .local v1, "info":Lcom/tudou/detail/vo/VoteInfo;
    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    .line 285
    .local v6, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 286
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/detail/vo/VoteInfo$Selection;

    .line 287
    .local v5, "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    if-ge v9, p2, :cond_1

    .line 288
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    sub-int v2, p2, v9

    .line 289
    .local v2, "interval":I
    if-eq v8, v10, :cond_0

    if-ge v2, v8, :cond_1

    .line 290
    :cond_0
    move v8, v2

    .line 291
    move-object v4, v1

    .line 285
    .end local v2    # "interval":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .end local v3    # "j":I
    .end local v6    # "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    :cond_3
    if-nez v4, :cond_7

    .line 297
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 298
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/VoteInfo;

    .line 299
    .restart local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTimes:Ljava/util/ArrayList;

    .line 300
    .restart local v6    # "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo$Selection;>;"
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 301
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/detail/vo/VoteInfo$Selection;

    .line 302
    .restart local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    if-le v9, p2, :cond_5

    .line 303
    iget v9, v5, Lcom/tudou/detail/vo/VoteInfo$Selection;->mBegin:I

    sub-int v2, v9, p2

    .line 304
    .restart local v2    # "interval":I
    if-eq v7, v10, :cond_4

    if-ge v2, v7, :cond_5

    .line 305
    :cond_4
    move v7, v2

    .line 306
    move-object v4, v1

    .line 300
    .end local v2    # "interval":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 297
    .end local v5    # "s":Lcom/tudou/detail/vo/VoteInfo$Selection;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 312
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
    .line 253
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 254
    sget-object v5, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v6, "onActivityCreated"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "Detail.vote"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mSharePreference:Landroid/content/SharedPreferences;

    .line 256
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 258
    const-string v5, "bundle.video.vote"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteInfos:Ljava/util/ArrayList;

    .line 259
    const-string v5, "bundle.video.position"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, "tPosition":I
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v4}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getMatchVote(Ljava/util/ArrayList;I)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v1

    .line 262
    .local v1, "info":Lcom/tudou/detail/vo/VoteInfo;
    if-eqz v1, :cond_0

    .line 263
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailTitle:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/tudou/detail/vo/VoteInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteItemList:Landroid/widget/ListView;

    new-instance v6, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/VoteInfo;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mSharePreference:Landroid/content/SharedPreferences;

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

    .line 267
    .local v2, "tLastTime":J
    sget-object v6, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

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

    .line 268
    sget-object v5, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

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

    .line 269
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide v8, 0x9a7ec800L

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 270
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/tudou/detail/fragment/VideoVoteFragment;->showLoading(ZZ)V

    .line 271
    invoke-direct {p0}, Lcom/tudou/detail/fragment/VideoVoteFragment;->fetchVoteResult()V

    .line 276
    .end local v1    # "info":Lcom/tudou/detail/vo/VoteInfo;
    .end local v2    # "tLastTime":J
    .end local v4    # "tPosition":I
    :cond_0
    return-void

    .line 267
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
    .line 99
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 236
    sget-object v2, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

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

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    if-ne p3, v6, :cond_0

    .line 241
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 242
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 243
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 244
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 245
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 242
    goto :goto_1

    .line 243
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    sget-object v1, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 350
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 344
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 356
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 332
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 325
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 319
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 338
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const v0, 0x7f0c03cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mTitleLayout:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/fragment/VideoVoteFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoVoteFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoVoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0c03cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailLayout:Landroid/view/View;

    .line 135
    const v0, 0x7f0c03ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailTitle:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0c03d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteItemList:Landroid/widget/ListView;

    .line 137
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteItemList:Landroid/widget/ListView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoVoteFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoVoteFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoVoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    const v0, 0x7f0c03d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintVote:Landroid/view/View;

    .line 179
    const v0, 0x7f0c03d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mLoading:Landroid/view/View;

    .line 180
    const v0, 0x7f0c03d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 181
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 182
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/detail/fragment/VideoVoteFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoVoteFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoVoteFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method public showLoading(ZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "error"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 217
    sget-object v0, Lcom/tudou/detail/fragment/VideoVoteFragment;->TAG:Ljava/lang/String;

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

    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    if-nez p2, :cond_1

    .line 225
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 229
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoVoteFragment;->mVoteDetailLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
