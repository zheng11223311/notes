.class final Lcom/alibaba/sdk/android/hotpatch/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/alibaba/sdk/android/hotpatch/e;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/e;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/f;->b:Lcom/alibaba/sdk/android/hotpatch/e;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/f;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/f;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->onHotPatchUpdateResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
