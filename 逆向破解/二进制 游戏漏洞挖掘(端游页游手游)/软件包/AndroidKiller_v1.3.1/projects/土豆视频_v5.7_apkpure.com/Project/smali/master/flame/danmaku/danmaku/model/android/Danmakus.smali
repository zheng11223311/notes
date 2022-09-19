.class public Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;,
        Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;,
        Lmaster/flame/danmaku/danmaku/model/android/Danmakus$TimeComparator;,
        Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;,
        Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosDescComparator;
    }
.end annotation


# static fields
.field public static final ST_BY_LIST:I = 0x4

.field public static final ST_BY_TIME:I = 0x0

.field public static final ST_BY_YPOS:I = 0x1

.field public static final ST_BY_YPOS_DESC:I = 0x2


# instance fields
.field private endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field public items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

.field private mComparator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;

.field private mDuplicateMergingEnabled:Z

.field private mSize:I

.field private mSortType:I

.field private startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sortType"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "sortType"    # I
    .param p2, "duplicateMergingEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 60
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    if-nez p1, :cond_1

    .line 77
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$TimeComparator;

    .end local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    invoke-direct {v0, p0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$TimeComparator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V

    .line 83
    .restart local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 91
    :goto_1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 92
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 93
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-direct {v1, p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Ljava/util/Collection;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    .line 94
    return-void

    .line 78
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 79
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;

    .end local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    invoke-direct {v0, p0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosComparator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V

    .line 80
    .restart local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 81
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosDescComparator;

    .end local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    invoke-direct {v0, p0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$YPosDescComparator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Z)V

    .restart local v0    # "comparator":Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;
    goto :goto_0

    .line 86
    :cond_3
    iput-boolean p2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 87
    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 88
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 89
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mComparator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 60
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 97
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "duplicateMergingEnabled"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(IZ)V

    .line 102
    return-void
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    return v0
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    return-void
.end method

.method private createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/Danmaku;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/Danmaku;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private setDuplicateMergingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 391
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mComparator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$BaseComparator;->setDuplicateMergingEnabled(Z)V

    .line 392
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 393
    return-void
.end method

.method private subset(JJ)Ljava/util/Collection;
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 163
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 166
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_3

    .line 167
    const-string/jumbo v0, "start"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 169
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v0, :cond_4

    .line 170
    const-string v0, "end"

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 173
    :cond_4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-wide p1, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 174
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-wide p3, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 175
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endSubItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 131
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 238
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 241
    :cond_1
    return-void
.end method

.method public contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 382
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 251
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->reset()V

    .line 126
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    return-object v0
.end method

.method public last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 262
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    goto :goto_0

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v0, 0x0

    .line 146
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setVisibility(Z)V

    .line 152
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    const/4 v1, 0x4

    .line 105
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-eq v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 107
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 113
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 114
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    .line 116
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    .line 117
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    if-nez v0, :cond_3

    .line 118
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-direct {v0, p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;-><init>(Lmaster/flame/danmaku/danmaku/model/android/Danmakus;Ljava/util/Collection;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    .line 122
    :goto_2
    return-void

    .line 111
    :cond_1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    goto :goto_0

    .line 116
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 120
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator:Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus$DanmakuIterator;->setDatas(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public setSubItemsDuplicateMergingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 399
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 402
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setDuplicateMergingEnabled(Z)V

    .line 403
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSize:I

    return v0
.end method

.method public sub(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const/4 v4, 0x4

    .line 190
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 191
    :cond_0
    const/4 v2, 0x0

    .line 221
    :goto_0
    return-object v2

    .line 193
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-nez v2, :cond_2

    .line 194
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-ne v2, v4, :cond_3

    .line 195
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v2, v4}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 196
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 201
    :cond_2
    :goto_1
    iget v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mSortType:I

    if-ne v2, v4, :cond_4

    .line 202
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    goto :goto_0

    .line 198
    :cond_3
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-boolean v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->mDuplicateMergingEnabled:Z

    invoke-direct {v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Z)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    goto :goto_1

    .line 204
    :cond_4
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v2, :cond_5

    .line 205
    const-string/jumbo v2, "start"

    invoke-direct {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 207
    :cond_5
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-nez v2, :cond_6

    .line 208
    const-string v2, "end"

    invoke-direct {p0, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->createItem(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 211
    :cond_6
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v2, :cond_7

    .line 212
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long v0, p1, v2

    .line 213
    .local v0, "dtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v2, p3, v2

    if-gtz v2, :cond_7

    .line 214
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    goto :goto_0

    .line 218
    .end local v0    # "dtime":J
    :cond_7
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-wide p1, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 219
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iput-wide p3, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 220
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    check-cast v2, Ljava/util/SortedSet;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->startItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->endItem:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-interface {v2, v4, v5}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->setItems(Ljava/util/Collection;)V

    .line 221
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subItems:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    goto :goto_0
.end method

.method public subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->subset(JJ)Ljava/util/Collection;

    move-result-object v1

    .line 181
    .local v1, "subset":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    const/4 v2, 0x0

    .line 185
    :goto_0
    return-object v2

    .line 184
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .local v0, "newSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
