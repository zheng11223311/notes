.class Lcom/tudou/upload/UploadApi;
.super Ljava/lang/Object;
.source "UploadApi.java"


# static fields
.field public static final CREATE_ERROR_1:I = 0x727357f

.field public static final CREATE_FILE_ERROR_1:I = 0x72735ed

.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static final ERROR_ACCESS_TOKEN_EXPIRED:I = 0x3f1

.field public static final ERROR_ACCESS_TOKEN_INVALID:I = 0x3f0

.field public static ERROR_CODE:I = 0x0

.field public static final LOGIN_ERROR_1:I = 0x7bfd048

.field public static final NEW_SLICE_ERROR_1:I = 0x72735ed

.field public static final UPLOAD_BUF:I = 0x1400

.field public static volatile UPLOAD_COUNT:J = 0x0L

.field public static final UPLOAD_SLICE_ERROR_1:I = 0x72735dd

.field public static final UPLOAD_SLICE_ERROR_10:I = 0x72735ea

.field public static final UPLOAD_SLICE_ERROR_2:I = 0x72735de

.field public static final UPLOAD_SLICE_ERROR_3:I = 0x72735df

.field public static final UPLOAD_SLICE_ERROR_4:I = 0x72735e0

.field public static final UPLOAD_SLICE_ERROR_5:I = 0x72735e1

.field public static final UPLOAD_SLICE_ERROR_6:I = 0x72735e2

.field public static final UPLOAD_SLICE_ERROR_7:I = 0x72735e3

.field public static final UPLOAD_SLICE_ERROR_8:I = 0x72735e4

.field public static final UPLOAD_SLICE_ERROR_9:I = 0x72735e5

.field public static access_token:Ljava/lang/String;

.field public static allowed_extensions:Ljava/lang/String;

.field public static allowed_max_file_size:J

.field public static check_finished:Z

.field public static confirmed_percent:I

.field public static volatile conns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static empty_tasks:I

.field public static expires_in:I

.field public static instant_upload_ok:Ljava/lang/String;

.field public static refresh_token:Ljava/lang/String;

.field public static volatile requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static status:I

.field public static token_type:Ljava/lang/String;

.field public static transferred_percent:I

.field public static upload_finished:Z

.field public static upload_server_ip:Ljava/lang/String;

.field public static upload_server_uri:Ljava/lang/String;

.field public static upload_token:Ljava/lang/String;

.field public static video_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    .line 38
    sput v1, Lcom/tudou/upload/UploadApi;->expires_in:I

    .line 39
    sput-object v0, Lcom/tudou/upload/UploadApi;->refresh_token:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/tudou/upload/UploadApi;->token_type:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/tudou/upload/UploadApi;->instant_upload_ok:Ljava/lang/String;

    .line 46
    sput v1, Lcom/tudou/upload/UploadApi;->status:I

    .line 47
    sput v1, Lcom/tudou/upload/UploadApi;->transferred_percent:I

    .line 48
    sput v1, Lcom/tudou/upload/UploadApi;->confirmed_percent:I

    .line 49
    sput v1, Lcom/tudou/upload/UploadApi;->empty_tasks:I

    .line 50
    sput-boolean v1, Lcom/tudou/upload/UploadApi;->upload_finished:Z

    .line 51
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_server_ip:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/tudou/upload/UploadApi;->check_finished:Z

    .line 54
    sput-object v0, Lcom/tudou/upload/UploadApi;->video_id:Ljava/lang/String;

    .line 56
    sput-wide v2, Lcom/tudou/upload/UploadApi;->allowed_max_file_size:J

    .line 57
    sput-object v0, Lcom/tudou/upload/UploadApi;->allowed_extensions:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    .line 61
    sput-wide v2, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    .line 799
    new-instance v0, Lcom/tudou/upload/UploadApi$1;

    invoke-direct {v0}, Lcom/tudou/upload/UploadApi$1;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadApi;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 317
    const-string v3, "http://openapi.youku.com/v2/uploads/cancel.json"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&client_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "8020077c0bbf7fc2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&upload_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tudou/upload/UploadApi;->post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 321
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 333
    :goto_0
    return v2

    .line 324
    :cond_0
    :try_start_0
    const-string v3, "upload_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    const/4 v2, 0x1

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static check()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    sget-object v4, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 292
    .local v1, "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v2

    .line 265
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "http://upload_server_uri/check"

    const-string v5, "upload_server_uri"

    sget-object v6, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ver=2.0&upload_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 269
    .restart local v1    # "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/tudou/upload/UploadApi;->status:I

    .line 273
    sget v4, Lcom/tudou/upload/UploadApi;->status:I

    if-ne v4, v3, :cond_2

    .line 274
    const-string v4, "upload_server_ip"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tudou/upload/UploadApi;->upload_server_ip:Ljava/lang/String;

    .line 275
    :cond_2
    sget v4, Lcom/tudou/upload/UploadApi;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 276
    const-string v4, "transferred_percent"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/tudou/upload/UploadApi;->transferred_percent:I

    .line 277
    :cond_3
    sget v4, Lcom/tudou/upload/UploadApi;->status:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 278
    const-string v4, "confirmed_percent"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/tudou/upload/UploadApi;->confirmed_percent:I

    .line 279
    :cond_4
    sget v4, Lcom/tudou/upload/UploadApi;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 280
    const-string v4, "empty_tasks"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/tudou/upload/UploadApi;->empty_tasks:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    move v2, v3

    .line 284
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static commit()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v3, "https://openapi.youku.com/v2/uploads/commit.json"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&client_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "8020077c0bbf7fc2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&upload_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&upload_server_ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/upload/UploadApi;->upload_server_ip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tudou/upload/UploadApi;->post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 300
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v2

    .line 304
    :cond_0
    :try_start_0
    const-string v3, "video_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->video_id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    const/4 v2, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "tags"    # Ljava/lang/String;
    .param p2, "public_type"    # Ljava/lang/String;
    .param p3, "copyright_type"    # Ljava/lang/String;
    .param p4, "watch_password"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "file_md5"    # Ljava/lang/String;
    .param p7, "file_name"    # Ljava/lang/String;
    .param p8, "file_size"    # J
    .param p10, "category"    # Ljava/lang/String;
    .param p11, "latitude"    # Ljava/lang/String;
    .param p12, "longitude"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v5, "https://openapi.youku.com/v2/uploads/create.json"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "access_token="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&client_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "8020077c0bbf7fc2"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&title="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&tags="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&public_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&copyright_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&watch_password="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&description="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&file_md5="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&file_name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&file_size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&category="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p10 .. p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p11, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&latitude="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p12, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&longitude="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/tudou/upload/UploadApi;->post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 166
    .local v3, "result":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 167
    const/4 v4, 0x0

    .line 180
    :goto_2
    return v4

    .line 147
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 169
    .restart local v3    # "result":Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    const-string v4, "upload_token"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    .line 170
    const-string v4, "upload_server_uri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    .line 171
    const-string v4, "instant_upload_ok"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tudou/upload/UploadApi;->instant_upload_ok:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    const/4 v4, 0x1

    goto :goto_2

    .line 173
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 180
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    .line 176
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static create_file(JLjava/lang/String;I)Z
    .locals 6
    .param p0, "file_size"    # J
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "slice_length"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    sget-object v2, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    const-string v2, "http://upload_server_uri/create_file"

    const-string v3, "upload_server_uri"

    sget-object v4, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ver=2.0&upload_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&file_size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&slice_length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tudou/upload/UploadApi;->postGet(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 15
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "paras"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 700
    const/4 v4, 0x0

    .line 701
    .local v4, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "?"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 704
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v14, "https"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 705
    invoke-static {}, Lcom/tudou/upload/UploadUtil;->trustAllHosts()V

    .line 706
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 708
    .local v5, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v12, Lcom/tudou/upload/UploadApi;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v5, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 709
    move-object v4, v5

    .line 714
    .end local v5    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 715
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 716
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 717
    const/16 v12, 0x7530

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 718
    const-string v12, "GET"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 719
    const-string v12, "Accept"

    const-string v14, "*/*"

    invoke-virtual {v4, v12, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v12, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v4, v12, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 743
    .local v8, "resCode":I
    const/16 v12, 0x12e

    if-ne v8, v12, :cond_0

    .line 744
    :try_start_2
    const-string v12, "location"

    invoke-virtual {v4, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 747
    :cond_0
    const/16 v12, 0xc8

    if-eq v8, v12, :cond_1

    const/16 v12, 0xc9

    if-ne v8, v12, :cond_7

    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 749
    .local v6, "input":Ljava/io/InputStream;
    :goto_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    invoke-direct {v12, v6, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 751
    .local v1, "data":Ljava/io/BufferedReader;
    const-string v10, ""

    .line 752
    .local v10, "strLine":Ljava/lang/String;
    const/4 v9, 0x0

    .line 753
    .local v9, "sbResult":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 754
    if-nez v9, :cond_2

    .line 755
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "sbResult":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 757
    .restart local v9    # "sbResult":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 772
    .end local v1    # "data":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v8    # "resCode":I
    .end local v9    # "sbResult":Ljava/lang/StringBuffer;
    .end local v10    # "strLine":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 773
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v13

    .line 775
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v7

    .line 711
    .restart local v11    # "url":Ljava/net/URL;
    :cond_4
    :try_start_3
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    goto :goto_0

    .line 725
    :catch_1
    move-exception v2

    .line 728
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 729
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Received authentication challenge is null"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v14, "No authentication challenges found"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 734
    :cond_5
    const/16 v8, 0x191

    .line 735
    .restart local v8    # "resCode":I
    const-string v12, ""

    invoke-static {v12}, Lcom/tudou/upload/UploadConfig;->saveUploadAccessToken(Ljava/lang/String;)V

    .end local v8    # "resCode":I
    :cond_6
    move-object v7, v13

    .line 737
    goto :goto_3

    .line 747
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "resCode":I
    :cond_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_1

    .line 760
    .restart local v1    # "data":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v9    # "sbResult":Ljava/lang/StringBuffer;
    .restart local v10    # "strLine":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 761
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 763
    if-nez v9, :cond_9

    move-object v7, v13

    .line 764
    goto :goto_3

    .line 768
    :cond_9
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 769
    .local v7, "json_result":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/tudou/upload/UploadApi;->hasException(Lorg/json/JSONObject;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    move-object v7, v13

    .line 770
    goto :goto_3
.end method

.method private static hasException(Lorg/json/JSONObject;)Z
    .locals 4
    .param p0, "jsonResult"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 780
    :try_start_0
    const-string v2, "error"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    const-string v2, "error"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    .line 782
    sget v2, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    const/16 v3, 0x3f1

    if-eq v2, v3, :cond_0

    sget v2, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_3

    .line 784
    :cond_0
    const-string v2, ""

    invoke-static {v2}, Lcom/tudou/upload/UploadConfig;->saveUploadAccessToken(Ljava/lang/String;)V

    .line 790
    :cond_1
    const/4 v1, 0x1

    .line 796
    :cond_2
    :goto_0
    return v1

    .line 785
    :cond_3
    sget v2, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    const v3, 0x72735ed

    if-ne v2, v3, :cond_1

    .line 786
    const/4 v2, -0x1

    sput v2, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v3, "https://openapi.youku.com/v2/oauth2/token"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client_id=8020077c0bbf7fc2&client_secret=567d95ceab365bbb795e41a680ae6f75&grant_type=password&username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&password="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tudou/upload/UploadApi;->post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    .local v1, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    sget v3, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    :try_start_0
    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    .line 114
    const-string v3, "expires_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tudou/upload/UploadApi;->expires_in:I

    .line 115
    const-string v3, "refresh_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->refresh_token:Ljava/lang/String;

    .line 116
    const-string v3, "token_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->token_type:Ljava/lang/String;

    .line 118
    sget-object v3, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    invoke-static {v3}, Lcom/tudou/upload/UploadConfig;->saveUploadAccessToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v2, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static new_slice()Lcom/tudou/upload/SliceInfo;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 199
    sget-object v4, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object v1, v3

    .line 222
    .local v2, "result":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 201
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "http://upload_server_uri/new_slice"

    const-string v5, "upload_server_uri"

    sget-object v6, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ver=2.0&upload_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 205
    .restart local v2    # "result":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tudou/upload/SliceInfo;

    invoke-direct {v1}, Lcom/tudou/upload/SliceInfo;-><init>()V

    .line 209
    .local v1, "info":Lcom/tudou/upload/SliceInfo;
    const-string v4, "slice_task_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    .line 210
    const-string v4, "offset"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tudou/upload/SliceInfo;->offset:J

    .line 211
    const-string v4, "length"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/tudou/upload/SliceInfo;->length:J

    .line 213
    const-string v4, "finished"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/tudou/upload/SliceInfo;->finished:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 215
    .end local v1    # "info":Lcom/tudou/upload/SliceInfo;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    move-object v1, v3

    .line 222
    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;
    .locals 17
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "paras"    # Ljava/lang/String;
    .param p2, "datas"    # [B

    .prologue
    .line 449
    const/4 v5, 0x0

    .line 450
    .local v5, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 452
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "https"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 453
    invoke-static {}, Lcom/tudou/upload/UploadUtil;->trustAllHosts()V

    .line 454
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 456
    .local v6, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v14, Lcom/tudou/upload/UploadApi;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v6, v14}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 457
    move-object v5, v6

    .line 462
    .end local v6    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 463
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 464
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 465
    const/16 v14, 0x7530

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 466
    const/16 v14, 0x7530

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 467
    const-string v14, "POST"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 468
    const-string v14, "Accept"

    const-string v15, "*/*"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v14, "Charset"

    const-string v15, "UTF-8"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz p2, :cond_0

    .line 472
    const-string v14, "Content-Type"

    const-string v15, "multipart/form-data; boundary=*****"

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v14, "Content-Length"

    move-object/from16 v0, p2

    array-length v15, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 478
    .local v9, "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 479
    if-eqz p2, :cond_1

    .line 480
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 482
    :cond_1
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 483
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 506
    .local v10, "resCode":I
    const/16 v14, 0x12e

    if-ne v10, v14, :cond_2

    .line 507
    :try_start_2
    const-string v14, "location"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/tudou/upload/UploadApi;->post(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    .line 509
    :cond_2
    const/16 v14, 0xc8

    if-eq v10, v14, :cond_3

    const/16 v14, 0xc9

    if-ne v10, v14, :cond_9

    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 511
    .local v7, "input":Ljava/io/InputStream;
    :goto_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v14, v7, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 513
    .local v2, "data":Ljava/io/BufferedReader;
    const-string v12, ""

    .line 514
    .local v12, "strLine":Ljava/lang/String;
    const/4 v11, 0x0

    .line 515
    .local v11, "sbResult":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 516
    if-nez v11, :cond_4

    .line 517
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11    # "sbResult":Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 519
    .restart local v11    # "sbResult":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 536
    .end local v2    # "data":Ljava/io/BufferedReader;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v10    # "resCode":I
    .end local v11    # "sbResult":Ljava/lang/StringBuffer;
    .end local v12    # "strLine":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 537
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    const/4 v8, 0x0

    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-object v8

    .line 459
    .restart local v13    # "url":Ljava/net/URL;
    :cond_6
    :try_start_3
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    goto/16 :goto_0

    .line 488
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    .line 491
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 492
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Received authentication challenge is null"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "No authentication challenges found"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 497
    :cond_7
    const/16 v10, 0x191

    .line 498
    .restart local v10    # "resCode":I
    const-string v14, ""

    invoke-static {v14}, Lcom/tudou/upload/UploadConfig;->saveUploadAccessToken(Ljava/lang/String;)V

    .line 500
    .end local v10    # "resCode":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 509
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "resCode":I
    :cond_9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    goto :goto_1

    .line 522
    .restart local v2    # "data":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v11    # "sbResult":Ljava/lang/StringBuffer;
    .restart local v12    # "strLine":Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 523
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    if-nez v11, :cond_b

    .line 526
    const/4 v8, 0x0

    goto :goto_3

    .line 531
    :cond_b
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    .local v8, "json_result":Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/tudou/upload/UploadApi;->hasException(Lorg/json/JSONObject;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    if-eqz v14, :cond_5

    .line 533
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public static postGet(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;
    .locals 24
    .param p0, "strUrl"    # Ljava/lang/String;
    .param p1, "paras"    # Ljava/lang/String;
    .param p2, "datas"    # [B

    .prologue
    .line 559
    const/4 v8, 0x0

    .line 560
    .local v8, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v19, Ljava/net/URL;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 562
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "https"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 563
    invoke-static {}, Lcom/tudou/upload/UploadUtil;->trustAllHosts()V

    .line 564
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 566
    .local v9, "https":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v20, Lcom/tudou/upload/UploadApi;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 567
    move-object v8, v9

    .line 571
    .end local v9    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    sget-object v20, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 574
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 575
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 576
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 577
    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 578
    const-string v20, "Accept"

    const-string v21, "*/*"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v20, "Charset"

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    if-eqz p2, :cond_1

    .line 582
    const v20, 0x1d4c0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 583
    const v20, 0x1d4c0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 584
    const-string v20, "Content-Type"

    const-string v21, "multipart/form-data; boundary=***** "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v20, "Content-Length"

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 589
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 590
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 593
    .local v13, "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1400

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 594
    const/16 v20, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 595
    sget-wide v20, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    sput-wide v20, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    .line 616
    :cond_0
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V

    .line 617
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v13    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 643
    .local v14, "resCode":I
    const/16 v20, 0x12e

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    .line 644
    :try_start_2
    const-string v20, "location"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/tudou/upload/UploadApi;->postGet(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    .line 647
    :cond_2
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v14, v0, :cond_3

    const/16 v20, 0xc9

    move/from16 v0, v20

    if-ne v14, v0, :cond_b

    :cond_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 649
    .local v11, "input":Ljava/io/InputStream;
    :goto_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 651
    .local v5, "data":Ljava/io/BufferedReader;
    const-string v16, ""

    .line 652
    .local v16, "strLine":Ljava/lang/String;
    const/4 v15, 0x0

    .line 653
    .local v15, "sbResult":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_c

    .line 654
    if-nez v15, :cond_4

    .line 655
    new-instance v15, Ljava/lang/StringBuffer;

    .end local v15    # "sbResult":Ljava/lang/StringBuffer;
    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 657
    .restart local v15    # "sbResult":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 678
    .end local v5    # "data":Ljava/io/BufferedReader;
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v14    # "resCode":I
    .end local v15    # "sbResult":Ljava/lang/StringBuffer;
    .end local v16    # "strLine":Ljava/lang/String;
    .end local v19    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 679
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 681
    const/4 v12, 0x0

    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_3
    return-object v12

    .line 569
    .restart local v19    # "url":Ljava/net/URL;
    :cond_5
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    goto/16 :goto_0

    .line 598
    .restart local v13    # "out":Ljava/io/DataOutputStream;
    :cond_6
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v4, v0, 0x1400

    .line 599
    .local v4, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v4, :cond_0

    .line 600
    mul-int/lit16 v0, v10, 0x1400

    move/from16 v18, v0

    .line 601
    .local v18, "uploaded":I
    const/16 v17, 0x0

    .line 602
    .local v17, "thisCount":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 603
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x1400

    move/from16 v21, v0

    sub-int v17, v20, v21

    .line 609
    :goto_5
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 610
    sget-wide v20, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    sput-wide v20, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    .line 599
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 604
    :cond_7
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_8

    .line 605
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    sub-int v17, v20, v18

    goto :goto_5

    .line 607
    :cond_8
    const/16 v17, 0x1400

    goto :goto_5

    .line 624
    .end local v4    # "count":I
    .end local v10    # "i":I
    .end local v13    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "thisCount":I
    .end local v18    # "uploaded":I
    :catch_1
    move-exception v6

    .line 627
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 628
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Received authentication challenge is null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "No authentication challenges found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 633
    :cond_9
    const/16 v14, 0x191

    .line 634
    .restart local v14    # "resCode":I
    const-string v20, ""

    invoke-static/range {v20 .. v20}, Lcom/tudou/upload/UploadConfig;->saveUploadAccessToken(Ljava/lang/String;)V

    .line 636
    .end local v14    # "resCode":I
    :cond_a
    sget-object v20, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 637
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 647
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "resCode":I
    :cond_b
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    goto/16 :goto_1

    .line 660
    .restart local v5    # "data":Ljava/io/BufferedReader;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v15    # "sbResult":Ljava/lang/StringBuffer;
    .restart local v16    # "strLine":Ljava/lang/String;
    :cond_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 661
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 662
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 663
    sget-object v20, Lcom/tudou/upload/UploadApi;->conns:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 665
    if-nez v15, :cond_d

    .line 666
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 670
    :cond_d
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    .local v12, "json_result":Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/tudou/upload/UploadApi;->hasException(Lorg/json/JSONObject;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 672
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 674
    :cond_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 675
    const/4 v11, 0x0

    .line 676
    const/4 v8, 0x0

    .line 677
    goto/16 :goto_3
.end method

.method public static reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/tudou/upload/UploadApi;->access_token:Ljava/lang/String;

    .line 77
    sput v1, Lcom/tudou/upload/UploadApi;->expires_in:I

    .line 78
    sput-object v0, Lcom/tudou/upload/UploadApi;->refresh_token:Ljava/lang/String;

    .line 79
    sput-object v0, Lcom/tudou/upload/UploadApi;->token_type:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    .line 83
    sput-object v0, Lcom/tudou/upload/UploadApi;->instant_upload_ok:Ljava/lang/String;

    .line 85
    sput v1, Lcom/tudou/upload/UploadApi;->status:I

    .line 86
    sput v1, Lcom/tudou/upload/UploadApi;->transferred_percent:I

    .line 87
    sput v1, Lcom/tudou/upload/UploadApi;->confirmed_percent:I

    .line 88
    sput v1, Lcom/tudou/upload/UploadApi;->empty_tasks:I

    .line 89
    sput-boolean v1, Lcom/tudou/upload/UploadApi;->upload_finished:Z

    .line 90
    sput-object v0, Lcom/tudou/upload/UploadApi;->upload_server_ip:Ljava/lang/String;

    .line 92
    sput-boolean v1, Lcom/tudou/upload/UploadApi;->check_finished:Z

    .line 93
    sput-object v0, Lcom/tudou/upload/UploadApi;->video_id:Ljava/lang/String;

    .line 95
    sput-wide v2, Lcom/tudou/upload/UploadApi;->allowed_max_file_size:J

    .line 96
    sput-object v0, Lcom/tudou/upload/UploadApi;->allowed_extensions:Ljava/lang/String;

    .line 98
    sput-wide v2, Lcom/tudou/upload/UploadApi;->UPLOAD_COUNT:J

    .line 99
    const/4 v0, -0x1

    sput v0, Lcom/tudou/upload/UploadApi;->ERROR_CODE:I

    .line 100
    return-void
.end method

.method public static resetSlice(Ljava/lang/String;)V
    .locals 3
    .param p0, "sliceIds"    # Ljava/lang/String;

    .prologue
    .line 426
    sget-object v0, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string v0, "http://upload_server_uri/reset_slice"

    const-string v1, "upload_server_uri"

    sget-object v2, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ver=2.0&upload_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slice_task_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static slices()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/SliceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/SliceInfo;>;"
    sget-object v7, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-object v6

    .line 359
    :cond_1
    const-string v7, "http://upload_server_uri/slices"

    const-string v8, "upload_server_uri"

    sget-object v9, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ver=2.0&upload_token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 363
    .local v5, "result":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 367
    :try_start_0
    const-string v7, "slices"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    const-string v7, "slices"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 371
    .local v4, "items":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 372
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 373
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v2, Lcom/tudou/upload/SliceInfo;

    invoke-direct {v2}, Lcom/tudou/upload/SliceInfo;-><init>()V

    .line 374
    .local v2, "info":Lcom/tudou/upload/SliceInfo;
    const-string v7, "sid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    .line 375
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/upload/SliceInfo;->status:I

    .line 376
    iget v7, v2, Lcom/tudou/upload/SliceInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 377
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/tudou/upload/SliceInfo;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "items":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static slices(Lcom/tudou/upload/UploadInfo;)Ljava/util/List;
    .locals 10
    .param p0, "aInfo"    # Lcom/tudou/upload/UploadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tudou/upload/UploadInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/SliceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/SliceInfo;>;"
    sget-object v7, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v6

    .line 394
    :cond_1
    const-string v7, "http://upload_server_uri/slices"

    const-string v8, "upload_server_uri"

    sget-object v9, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ver=2.0&upload_token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 398
    .local v5, "result":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 402
    :try_start_0
    const-string v7, "slices"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 405
    const-string v7, "slices"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 406
    .local v4, "items":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 407
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 408
    .local v3, "item":Lorg/json/JSONObject;
    new-instance v2, Lcom/tudou/upload/SliceInfo;

    invoke-direct {v2}, Lcom/tudou/upload/SliceInfo;-><init>()V

    .line 409
    .local v2, "info":Lcom/tudou/upload/SliceInfo;
    const-string v7, "sid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    .line 410
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/tudou/upload/SliceInfo;->status:I

    .line 411
    iget v7, v2, Lcom/tudou/upload/SliceInfo;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 412
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/tudou/upload/SliceInfo;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "items":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static spec()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 337
    const-string v3, "http://openapi.youku.com/v2/schemas/upload/spec.json"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/tudou/upload/UploadApi;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 339
    .local v1, "result":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 352
    :goto_0
    return v2

    .line 342
    :cond_0
    :try_start_0
    const-string v3, "allowed_max_file_size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/tudou/upload/UploadApi;->allowed_max_file_size:J

    .line 343
    const-string v3, "allowed_extensions"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->allowed_extensions:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    const/4 v2, 0x1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static uploadFile(Lcom/tudou/upload/UploadInfo;)V
    .locals 26
    .param p0, "uploadInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 844
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 845
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&pos="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 846
    .local v19, "uploadUrl":Ljava/lang/String;
    const-string v10, "\r\n"

    .line 847
    .local v10, "end":Ljava/lang/String;
    const-string v18, "--"

    .line 848
    .local v18, "twoHyphens":Ljava/lang/String;
    const-string v4, "******"

    .line 851
    .local v4, "boundary":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 852
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 854
    .local v12, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 855
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 856
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 857
    const-string v21, "POST"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 858
    const-string v21, "Connection"

    const-string v22, "Keep-Alive"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v21, "Charset"

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v21, "Content-Type"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "multipart/form-data;boundary="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v21, "Content-Length"

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 865
    .local v8, "dos":Ljava/io/DataOutputStream;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 866
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 870
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 871
    .local v11, "fis":Ljava/io/FileInputStream;
    const-string v21, "UploadProcessor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "file-size====="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 873
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 874
    .local v7, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/upload/UploadInfo;->getUploadedSize()J

    move-result-wide v16

    .line 875
    .local v16, "sum":J
    :goto_0
    invoke-virtual {v11, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_0

    .line 877
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 878
    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v16, v16, v22

    .line 879
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V

    .line 880
    const-string v21, "UploadProcessor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "write-size====="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v16    # "sum":J
    .end local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 898
    .local v9, "e":Ljava/lang/Exception;
    const-string v21, "UploadProcessor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "exception====="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 882
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v16    # "sum":J
    .restart local v20    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 883
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 884
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 888
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 889
    .local v13, "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v21, "utf-8"

    move-object/from16 v0, v21

    invoke-direct {v14, v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 890
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 891
    .local v5, "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 892
    .local v15, "result":Ljava/lang/String;
    const-string v21, "UploadProcessor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "reString====="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 894
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static upload_slice(Lcom/tudou/upload/SliceInfo;[B)Lcom/tudou/upload/SliceInfo;
    .locals 10
    .param p0, "info"    # Lcom/tudou/upload/SliceInfo;
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 226
    sget-object v5, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v2, v4

    .line 255
    :goto_0
    return-object v2

    .line 228
    :cond_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 229
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 230
    const-string v5, "http://upload_server_uri/upload_slice"

    const-string v6, "upload_server_uri"

    sget-object v7, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ver=2.0&upload_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tudou/upload/UploadApi;->upload_token:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&slice_task_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/tudou/upload/SliceInfo;->offset:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/tudou/upload/SliceInfo;->length:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&crc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lcom/tudou/upload/UploadApi;->postGet(Ljava/lang/String;Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object v3

    .line 238
    .local v3, "result":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    move-object v2, v4

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    :try_start_0
    new-instance v2, Lcom/tudou/upload/SliceInfo;

    invoke-direct {v2}, Lcom/tudou/upload/SliceInfo;-><init>()V

    .line 242
    .local v2, "info_":Lcom/tudou/upload/SliceInfo;
    const-string v5, "slice_task_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    .line 243
    const-string v5, "offset"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tudou/upload/SliceInfo;->offset:J

    .line 244
    const-string v5, "length"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, v2, Lcom/tudou/upload/SliceInfo;->length:J

    .line 246
    const-string v5, "finished"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/tudou/upload/SliceInfo;->finished:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 248
    .end local v2    # "info_":Lcom/tudou/upload/SliceInfo;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    move-object v2, v4

    .line 255
    goto/16 :goto_0

    .line 251
    :catch_1
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
