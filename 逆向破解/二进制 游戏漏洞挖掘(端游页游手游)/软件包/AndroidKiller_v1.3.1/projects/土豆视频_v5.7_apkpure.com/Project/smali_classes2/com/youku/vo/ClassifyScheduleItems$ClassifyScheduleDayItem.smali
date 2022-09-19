.class public Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
.super Ljava/lang/Object;
.source "ClassifyScheduleItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ClassifyScheduleItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassifyScheduleDayItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    }
.end annotation


# instance fields
.field public album:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;",
            ">;"
        }
    .end annotation
.end field

.field public date:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/ClassifyScheduleItems;

.field public week:Ljava/lang/String;

.field public weekday:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/ClassifyScheduleItems;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->this$0:Lcom/youku/vo/ClassifyScheduleItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->date:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAblumItem()Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    invoke-direct {v0, p0}, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;-><init>(Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;)V

    return-object v0
.end method
