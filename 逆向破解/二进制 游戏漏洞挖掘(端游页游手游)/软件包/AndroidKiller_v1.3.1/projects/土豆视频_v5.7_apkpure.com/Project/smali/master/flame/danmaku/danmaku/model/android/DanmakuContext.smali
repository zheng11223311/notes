.class public Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
.super Ljava/lang/Object;
.source "DanmakuContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$BorderType;,
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;,
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    }
.end annotation


# instance fields
.field public FBDanmakuVisibility:Z

.field public FTDanmakuVisibility:Z

.field public L2RDanmakuVisibility:Z

.field public R2LDanmakuVisibility:Z

.field public SecialDanmakuVisibility:Z

.field private mBlockGuestDanmaku:Z

.field private mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mColorValueWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

.field public final mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

.field private final mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mDuplicateMergingEnable:Z

.field mFilterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFont:Landroid/graphics/Typeface;

.field public final mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

.field private mIsMaxLinesLimited:Z

.field private mIsPreventOverlappingEnabled:Z

.field mUserHashBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserIdBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public maximumNumsInScreen:I

.field public refreshRateMS:I

.field public scaleTextSize:F

.field public scrollSpeedFactor:F

.field public shadowRadius:I

.field public shadowType:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$BorderType;

.field public transparency:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    .line 45
    sget v0, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    .line 47
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    .line 52
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    .line 54
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    .line 56
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    .line 58
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    .line 60
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SecialDanmakuVisibility:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->maximumNumsInScreen:I

    .line 72
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    .line 78
    const/16 v0, 0xf

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->refreshRateMS:I

    .line 87
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$BorderType;->SHADOW:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$BorderType;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->shadowType:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$BorderType;

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->shadowRadius:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    .line 99
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    .line 101
    iput-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    .line 109
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/AndroidDisplayer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 111
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 113
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    .line 115
    new-instance v0, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    .line 20
    return-void
.end method

.method public static create()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    return-object v0
.end method

.method private varargs notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 631
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 632
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 639
    :cond_1
    return-void

    .line 632
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 633
    .local v1, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 634
    .local v0, "cb":Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;
    if-eqz v0, :cond_0

    .line 635
    invoke-interface {v0, p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;->onDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDanmakuVisible(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "type"    # I

    .prologue
    .line 192
    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setFilterData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method private setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "primary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v1, p1, p3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->get(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    .line 188
    .local v0, "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<TT;>;"
    invoke-interface {v0, p2}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->setData(Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public varargs addUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "hashes"    # [Ljava/lang/String;

    .prologue
    .line 410
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-object p0

    .line 413
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 414
    const-string v0, "1015_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 416
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs addUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "ids"    # [Ljava/lang/Integer;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object p0

    .line 465
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 466
    const-string v0, "1014_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 468
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public blockGuestDanmaku(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "block"    # Z

    .prologue
    .line 482
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    if-eq v0, p1, :cond_0

    .line 483
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mBlockGuestDanmaku:Z

    .line 484
    if-eqz p1, :cond_1

    .line 485
    const-string v0, "1016_Filter"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 490
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    return-object p0

    .line 487
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1016_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getColorValueWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    return-object v0
.end method

.method public getFBDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    return v0
.end method

.method public getFTDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    return v0
.end method

.method public getL2RDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    return v0
.end method

.method public getR2LDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    return v0
.end method

.method public getSecialDanmakuVisibility()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SecialDanmakuVisibility:Z

    return v0
.end method

.method public getUserHashBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    return-object v0
.end method

.method public getUserIdBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    return-object v0
.end method

.method public isDuplicateMergingEnabled()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    return v0
.end method

.method public isMaxLinesLimited()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsMaxLinesLimited:Z

    return v0
.end method

.method public isPreventOverlappingEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsPreventOverlappingEnabled:Z

    return v0
.end method

.method public preventOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsPreventOverlappingEnabled:Z

    .line 562
    if-nez p1, :cond_1

    .line 563
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v3, "1019_Filter"

    invoke-virtual {v0, v3, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;Z)V

    .line 567
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 568
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 569
    return-object p0

    :cond_0
    move v0, v2

    .line 561
    goto :goto_0

    .line 565
    :cond_1
    const-string v0, "1019_Filter"

    invoke-direct {p0, v0, p1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public registerConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V
    .locals 3
    .param p1, "listener"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .prologue
    .line 601
    if-eqz p1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 602
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    .line 604
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 609
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 605
    .local v0, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public varargs removeUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "hashes"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 392
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-object p0

    .line 395
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 398
    const-string v1, "1015_Filter"

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 400
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_2
    aget-object v0, p1, v1

    .line 396
    .local v0, "hash":Ljava/lang/String;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public varargs removeUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "ids"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 444
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object p0

    .line 447
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 450
    const-string v1, "1014_Filter"

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 452
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-direct {p0, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_2
    aget-object v0, p1, v1

    .line 448
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 2
    .param p1, "cacheStuffer"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;
    .param p2, "cacheStufferAdapter"    # Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;

    .prologue
    .line 587
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    .line 588
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->setProxy(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer$Proxy;)V

    .line 590
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCacheStuffer:Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setCacheStuffer(Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;)V

    .line 592
    :cond_0
    return-object p0
.end method

.method public varargs setColorValueWhiteList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "colors"    # [Ljava/lang/Integer;

    .prologue
    .line 357
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 359
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1013_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 364
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 365
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 366
    return-object p0

    .line 361
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 362
    const-string v0, "1013_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mColorValueWhiteList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDanmakuBold(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "bold"    # Z

    .prologue
    .line 346
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setFakeBoldText(Z)V

    .line 347
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_BOLD:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 348
    return-object p0
.end method

.method public varargs setDanmakuStyle(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "style"    # I
    .param p2, "values"    # [F

    .prologue
    .line 334
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setDanmakuStyle(I[F)V

    .line 335
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 336
    return-object p0
.end method

.method public setDanmakuTransparency(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5
    .param p1, "p"    # F

    .prologue
    .line 137
    sget v1, Lmaster/flame/danmaku/danmaku/model/AlphaValue;->MAX:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 138
    .local v0, "newTransparency":I
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    if-eq v0, v1, :cond_0

    .line 139
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->transparency:I

    .line 140
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setTransparency(I)V

    .line 141
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-object p0
.end method

.method public setDuplicateMergingEnabled(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 517
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    if-eq v0, p1, :cond_0

    .line 518
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDuplicateMergingEnable:Z

    .line 519
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 520
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 522
    :cond_0
    return-object p0
.end method

.method public setFBDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 212
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 213
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 215
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 216
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FBDanmakuVisibility:Z

    .line 217
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 219
    :cond_0
    return-object p0
.end method

.method public setFTDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 171
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 172
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 174
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 175
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->FTDanmakuVisibility:Z

    .line 176
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-object p0
.end method

.method public setL2RDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 235
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 236
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 238
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 239
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->L2RDanmakuVisibility:Z

    .line 240
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    return-object p0
.end method

.method public setMaximumLines(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .prologue
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mIsMaxLinesLimited:Z

    .line 538
    if-nez p1, :cond_1

    .line 539
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v3, "1018_Filter"

    invoke-virtual {v0, v3, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;Z)V

    .line 543
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 544
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 545
    return-object p0

    :cond_0
    move v0, v2

    .line 537
    goto :goto_0

    .line 541
    :cond_1
    const-string v0, "1018_Filter"

    invoke-direct {p0, v0, p1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method public setMaximumVisibleSizeInScreen(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 298
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->maximumNumsInScreen:I

    .line 300
    if-nez p1, :cond_0

    .line 301
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1011_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1012_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 316
    :goto_0
    return-object p0

    .line 307
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1011_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1012_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 310
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    :cond_1
    const-string v0, "1011_Filter"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 315
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    .local p1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->preventOverlapping(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    return-object v0
.end method

.method public setR2LDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    .line 258
    invoke-direct {p0, p1, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 259
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 261
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 262
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->R2LDanmakuVisibility:Z

    .line 263
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 265
    :cond_0
    return-object p0
.end method

.method public setScaleTextSize(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "p"    # F

    .prologue
    .line 147
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 148
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    .line 149
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->clearTextHeightCache()V

    .line 150
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setScaleTextSizeFactor(F)V

    .line 151
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 152
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 153
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-object p0
.end method

.method public setScrollSpeedFactor(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "p"    # F

    .prologue
    .line 501
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 502
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scrollSpeedFactor:F

    .line 503
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->updateDurationFactor(F)V

    .line 504
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 505
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 506
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 508
    :cond_0
    return-object p0
.end method

.method public setSpecialDanmakuVisibility(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 281
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setDanmakuVisible(ZI)V

    .line 282
    const-string v0, "1010_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFilterTypes:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 284
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SecialDanmakuVisibility:Z

    if-eq v0, p1, :cond_0

    .line 285
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->SecialDanmakuVisibility:Z

    .line 286
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 288
    :cond_0
    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 2
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 127
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 128
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mFont:Landroid/graphics/Typeface;

    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->clearTextHeightCache()V

    .line 130
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDisplayer:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setTypeFace(Ljava/lang/Object;)V

    .line 131
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TYPEFACE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-object p0
.end method

.method public varargs setUserHashBlackList([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "hashes"    # [Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1015_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 386
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 387
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 388
    return-object p0

    .line 383
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 384
    const-string v0, "1015_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserHashBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs setUserIdBlackList([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .param p1, "ids"    # [Ljava/lang/Integer;

    .prologue
    .line 431
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v1, "1014_Filter"

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    .line 438
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateFilterFlag()V

    .line 439
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->notifyConfigureChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 440
    return-object p0

    .line 435
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 436
    const-string v0, "1014_Filter"

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mUserIdBlackList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->setFilterData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterAllConfigChangedCallbacks()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    .line 628
    :cond_0
    return-void
.end method

.method public unregisterConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V
    .locals 3
    .param p1, "listener"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 616
    .local v0, "configReferer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
