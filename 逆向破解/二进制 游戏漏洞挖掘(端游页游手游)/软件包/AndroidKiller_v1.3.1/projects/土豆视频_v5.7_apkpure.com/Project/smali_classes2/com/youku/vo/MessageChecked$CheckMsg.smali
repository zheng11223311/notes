.class public Lcom/youku/vo/MessageChecked$CheckMsg;
.super Ljava/lang/Object;
.source "MessageChecked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/MessageChecked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckMsg"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/MessageChecked;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/MessageChecked;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/vo/MessageChecked$CheckMsg;->this$0:Lcom/youku/vo/MessageChecked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
