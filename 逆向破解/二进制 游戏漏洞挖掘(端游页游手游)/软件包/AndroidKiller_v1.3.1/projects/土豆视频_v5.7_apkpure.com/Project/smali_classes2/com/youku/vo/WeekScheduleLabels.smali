.class public Lcom/youku/vo/WeekScheduleLabels;
.super Ljava/lang/Object;
.source "WeekScheduleLabels.java"


# instance fields
.field public channel_id:I

.field public item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/WeekScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field public label_title:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
