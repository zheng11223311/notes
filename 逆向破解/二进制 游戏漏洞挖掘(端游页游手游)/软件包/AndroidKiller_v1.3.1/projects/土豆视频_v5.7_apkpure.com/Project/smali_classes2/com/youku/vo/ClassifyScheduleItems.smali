.class public Lcom/youku/vo/ClassifyScheduleItems;
.super Ljava/lang/Object;
.source "ClassifyScheduleItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getClassifyScheduleDayItem(Z)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .locals 2
    .param p1, "isNewAbList"    # Z

    .prologue
    .line 12
    new-instance v0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    invoke-direct {v0, p0}, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;-><init>(Lcom/youku/vo/ClassifyScheduleItems;)V

    .line 13
    .local v0, "mDayItem":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    if-eqz p1, :cond_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    .line 15
    :cond_0
    return-object v0
.end method
