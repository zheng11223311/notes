.class public Lcom/youku/vo/AdResult$AdHTML$SusResult;
.super Ljava/lang/Object;
.source "AdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/AdResult$AdHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SusResult"
.end annotation


# instance fields
.field public SDK:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/AdResult$AdHTML;


# direct methods
.method public constructor <init>(Lcom/youku/vo/AdResult$AdHTML;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/vo/AdResult$AdHTML$SusResult;->this$1:Lcom/youku/vo/AdResult$AdHTML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/vo/AdResult$AdHTML$SusResult;->SDK:Ljava/lang/String;

    return-void
.end method
