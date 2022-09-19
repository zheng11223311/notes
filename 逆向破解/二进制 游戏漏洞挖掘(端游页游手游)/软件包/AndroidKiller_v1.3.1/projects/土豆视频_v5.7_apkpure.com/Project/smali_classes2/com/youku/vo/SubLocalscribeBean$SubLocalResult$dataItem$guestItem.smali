.class public Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$guestItem;
.super Ljava/lang/Object;
.source "SubLocalscribeBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "guestItem"
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field final synthetic this$2:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem$guestItem;->this$2:Lcom/youku/vo/SubLocalscribeBean$SubLocalResult$dataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
