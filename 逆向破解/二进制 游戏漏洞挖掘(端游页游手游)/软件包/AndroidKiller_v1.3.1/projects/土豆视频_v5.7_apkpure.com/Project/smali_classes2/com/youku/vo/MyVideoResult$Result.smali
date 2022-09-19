.class public Lcom/youku/vo/MyVideoResult$Result;
.super Ljava/lang/Object;
.source "MyVideoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MyVideoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public albumCode:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field public albumPicUrl:Ljava/lang/String;

.field public albumUrl:Ljava/lang/String;

.field public albumid:I

.field public second:I

.field final synthetic this$0:Lcom/youku/vo/MyVideoResult;


# direct methods
.method public constructor <init>(Lcom/youku/vo/MyVideoResult;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/vo/MyVideoResult$Result;->this$0:Lcom/youku/vo/MyVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
