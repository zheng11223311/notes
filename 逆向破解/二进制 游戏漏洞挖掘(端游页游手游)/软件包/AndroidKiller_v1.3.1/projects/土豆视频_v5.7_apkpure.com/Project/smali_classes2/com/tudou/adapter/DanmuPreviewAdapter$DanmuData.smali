.class public Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;
.super Ljava/lang/Object;
.source "DanmuPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DanmuPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DanmuData"
.end annotation


# instance fields
.field public color:I

.field public speed:I

.field final synthetic this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/DanmuPreviewAdapter;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tudou/adapter/DanmuPreviewAdapter$DanmuData;->this$0:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
