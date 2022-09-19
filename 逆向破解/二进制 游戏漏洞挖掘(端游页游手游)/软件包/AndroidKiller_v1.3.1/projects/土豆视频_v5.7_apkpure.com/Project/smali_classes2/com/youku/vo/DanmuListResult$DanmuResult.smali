.class public Lcom/youku/vo/DanmuListResult$DanmuResult;
.super Ljava/lang/Object;
.source "DanmuListResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/DanmuListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DanmuResult"
.end annotation


# instance fields
.field public danmu_body:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public danmu_num:Ljava/lang/String;

.field public image_448_252:Ljava/lang/String;

.field public isCountShowed:Z

.field public play_url:Ljava/lang/String;

.field public played_times:Ljava/lang/String;

.field public short_discription:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/DanmuListResult;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/DanmuListResult;)V
    .locals 1

    .prologue
    .line 6
    iput-object p1, p0, Lcom/youku/vo/DanmuListResult$DanmuResult;->this$0:Lcom/youku/vo/DanmuListResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/DanmuListResult$DanmuResult;->isCountShowed:Z

    return-void
.end method
