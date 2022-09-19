.class public Lmaster/flame/danmaku/controller/DanmakuFilters;
.super Ljava/lang/Object;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$GuestFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$OverlappingFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$TextColorFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$UserFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$UserHashFilter;,
        Lmaster/flame/danmaku/controller/DanmakuFilters$UserIdFilter;
    }
.end annotation


# static fields
.field public static final FILTER_TYPE_DUPLICATE_MERGE:I = 0x80

.field public static final FILTER_TYPE_ELAPSED_TIME:I = 0x4

.field public static final FILTER_TYPE_MAXIMUM_LINES:I = 0x100

.field public static final FILTER_TYPE_OVERLAPPING:I = 0x200

.field public static final FILTER_TYPE_TEXTCOLOR:I = 0x8

.field public static final FILTER_TYPE_TYPE:I = 0x1

.field public static final FILTER_TYPE_USER_GUEST:I = 0x40

.field public static final FILTER_TYPE_USER_HASH:I = 0x20

.field public static final FILTER_TYPE_USER_ID:I = 0x10

.field public static final FILYER_TYPE_QUANTITY:I = 0x2

.field public static final TAG_DUPLICATE_FILTER:Ljava/lang/String; = "1017_Filter"

.field public static final TAG_ELAPSED_TIME_FILTER:Ljava/lang/String; = "1012_Filter"

.field public static final TAG_GUEST_FILTER:Ljava/lang/String; = "1016_Filter"

.field public static final TAG_MAXIMUN_LINES_FILTER:Ljava/lang/String; = "1018_Filter"

.field public static final TAG_OVERLAPPING_FILTER:Ljava/lang/String; = "1019_Filter"

.field public static final TAG_QUANTITY_DANMAKU_FILTER:Ljava/lang/String; = "1011_Filter"

.field public static final TAG_TEXT_COLOR_DANMAKU_FILTER:Ljava/lang/String; = "1013_Filter"

.field public static final TAG_TYPE_DANMAKU_FILTER:Ljava/lang/String; = "1010_Filter"

.field public static final TAG_USER_HASH_FILTER:Ljava/lang/String; = "1015_Filter"

.field public static final TAG_USER_ID_FILTER:Ljava/lang/String; = "1014_Filter"


# instance fields
.field public final filterException:Ljava/lang/Exception;

.field private final filters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final filtersSecondary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;>;"
        }
    .end annotation
.end field

.field mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation
.end field

.field mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not suuport this filter tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filterException:Ljava/lang/Exception;

    .line 571
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    .line 573
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    .line 574
    new-array v0, v2, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 575
    new-array v0, v2, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 22
    return-void
.end method

.method private throwFilterException()V
    .locals 1

    .prologue
    .line 685
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filterException:Ljava/lang/Exception;

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :catch_0
    move-exception v0

    .line 688
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 658
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 662
    return-void

    .line 654
    :cond_0
    aget-object v0, v3, v2

    .line 655
    .local v0, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v0, :cond_1

    .line 656
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->clear()V

    .line 654
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    .end local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_2
    aget-object v0, v2, v1

    .line 659
    .restart local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v0, :cond_3

    .line 660
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->clear()V

    .line 658
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 12
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "index"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 545
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v11, v10

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-lt v9, v11, :cond_1

    .line 554
    :cond_0
    return-void

    .line 545
    :cond_1
    aget-object v1, v10, v9

    .line 546
    .local v1, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v1, :cond_2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 547
    invoke-interface/range {v1 .. v7}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v8

    .line 548
    .local v8, "filtered":Z
    move-object/from16 v0, p6

    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    .line 549
    if-nez v8, :cond_0

    .line 545
    .end local v8    # "filtered":Z
    :cond_2
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0
.end method

.method public filterSecondary(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 12
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "lines"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "willHit"    # Z
    .param p6, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 558
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v11, v10

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-lt v9, v11, :cond_0

    .line 567
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 558
    :cond_0
    aget-object v1, v10, v9

    .line 559
    .local v1, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v1, :cond_1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 560
    invoke-interface/range {v1 .. v7}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v8

    .line 561
    .local v8, "filtered":Z
    move-object/from16 v0, p6

    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    iput v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->filterResetFlag:I

    .line 562
    if-eqz v8, :cond_1

    .line 563
    const/4 v2, 0x1

    goto :goto_1

    .line 558
    .end local v8    # "filtered":Z
    :cond_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->get(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "primary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 582
    if-eqz p2, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-object v0, v1

    .line 583
    .local v0, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :goto_0
    if-nez v0, :cond_0

    .line 584
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    .line 586
    :cond_0
    return-object v0

    .line 582
    .end local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-object v0, v1

    goto :goto_0
.end method

.method public registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-result-object v0

    return-object v0
.end method

.method public registerFilter(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "primary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 594
    if-nez p1, :cond_0

    .line 595
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->throwFilterException()V

    move-object v0, v1

    .line 634
    :goto_0
    return-object v0

    .line 598
    :cond_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 599
    .local v0, "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-nez v0, :cond_1

    .line 600
    const-string v2, "1010_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$TypeDanmakuFilter;-><init>()V

    .line 622
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_1
    :goto_1
    if-nez v0, :cond_b

    .line 623
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->throwFilterException()V

    move-object v0, v1

    .line 624
    goto :goto_0

    .line 602
    :cond_2
    const-string v2, "1011_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;-><init>()V

    .line 604
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_3
    const-string v2, "1012_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;-><init>()V

    .line 606
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_4
    const-string v2, "1013_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 607
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$TextColorFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$TextColorFilter;-><init>()V

    .line 608
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_5
    const-string v2, "1014_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserIdFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$UserIdFilter;-><init>()V

    .line 610
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_6
    const-string v2, "1015_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 611
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$UserHashFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$UserHashFilter;-><init>()V

    .line 612
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_7
    const-string v2, "1016_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 613
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$GuestFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$GuestFilter;-><init>()V

    .line 614
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_8
    const-string v2, "1017_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 615
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;-><init>()V

    .line 616
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_9
    const-string v2, "1018_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 617
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$MaximumLinesFilter;-><init>()V

    .line 618
    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto :goto_1

    :cond_a
    const-string v2, "1019_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    new-instance v0, Lmaster/flame/danmaku/controller/DanmakuFilters$OverlappingFilter;

    .end local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    invoke-direct {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$OverlappingFilter;-><init>()V

    .restart local v0    # "filter":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    goto/16 :goto_1

    .line 626
    :cond_b
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->setData(Ljava/lang/Object;)V

    .line 627
    if-eqz p2, :cond_c

    .line 628
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    goto/16 :goto_0

    .line 631
    :cond_c
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 677
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 678
    new-array v0, v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 679
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 680
    new-array v0, v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 681
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 669
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 673
    return-void

    .line 665
    :cond_0
    aget-object v0, v3, v2

    .line 666
    .local v0, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v0, :cond_1

    .line 667
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->reset()V

    .line 665
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_2
    aget-object v0, v2, v1

    .line 670
    .restart local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    if-eqz v0, :cond_3

    .line 671
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->reset()V

    .line 669
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public unregisterFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 638
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;Z)V

    .line 639
    return-void
.end method

.method public unregisterFilter(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "primary"    # Z

    .prologue
    .line 642
    if-eqz p2, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-object v0, v1

    .line 643
    .local v0, "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;->clear()V

    .line 645
    if-eqz p2, :cond_2

    .line 646
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArray:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 651
    :cond_0
    :goto_1
    return-void

    .line 642
    .end local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    move-object v0, v1

    goto :goto_0

    .line 648
    .restart local v0    # "f":Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;, "Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter<*>;"
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->filtersSecondary:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters;->mFilterArraySecondary:[Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    goto :goto_1
.end method
