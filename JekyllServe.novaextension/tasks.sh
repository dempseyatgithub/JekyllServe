#!/bin/sh

if [ "$JKLSRV_USE_BUNDLE_EXEC" = "1" ] ; then
	BUNDLE_EXEC="bundle exec"
fi

if [ "$JKLSRV_INCREMENTAL" = "1" ] ; then
	INCREMENTAL_FLAG="--incremental"
fi

if [ "$JKLSRV_OPEN_URL" = "1" ] ; then
	OPEN_URL_FLAG="--open-url"
fi

if [ "$JKLSRV_FUTURE" = "1" ] ; then
	FUTURE_FLAG="--future"
fi

if [ "$JKLSRV_DRAFTS" = "1" ] ; then
	DRAFTS_FLAG="--drafts"
fi

if [ "$JKLSRV_UNPUBLISHED" = "1" ] ; then
	UNPUBLISHED_FLAG="--unpublished"
fi

if [ "$JKLSRV_VERBOSE" = "1" ] ; then
	VERBOSE_FLAG="--verbose"
	echo "$VERBOSE_FLAG"
fi

if [ "$JKLSRV_STRICT_FRONT_MATTER" = "1" ] ; then
	STRICT_FRONT_MATTER_FLAG="--strict_front_matter"
fi

if [ "$JKLSRV_SAFE" = "1" ] ; then
	SAFE_FLAG="--safe"
fi

if [ "$JKLSRV_TRACE" = "1" ] ; then
	TRACE_FLAG="--trace"
fi

if [ -n "$JKLSRV_HOST" ] ; then
	if [[ $JKLSRV_HOST = *" "* ]]; then
  		echo "WARNING: Hostname '"$JKLSRV_HOST"' contains spaces. Using localhost instead."
	else
		HOST_FLAG="--host"
		HOST_VALUE=$JKLSRV_HOST
	fi
fi

if [ -n "$JKLSRV_PORT" ] ; then
	if [[ $JKLSRV_PORT = *" "* ]]; then
  		echo "WARNING: Port '"$JKLSRV_PORT"' contains spaces. Using port 4000 instead."
	else
		PORT_FLAG="--port"
		PORT_VALUE=$JKLSRV_PORT
	fi
fi

if [ "$NOVA_TASK_NAME" = "run" ] ; then
	$BUNDLE_EXEC jekyll serve $HOST_FLAG $HOST_VALUE $PORT_FLAG $PORT_VALUE $INCREMENTAL_FLAG $OPEN_URL_FLAG $FUTURE_FLAG $DRAFTS_FLAG $UNPUBLISHED_FLAG $VERBOSE_FLAG $STRICT_FRONT_MATTER_FLAG $SAFE_FLAG $TRACE_FLAG $JKLSRV_CUSTOM_ARGS
fi

if [ "$NOVA_TASK_NAME" = "build" ] ; then
	$BUNDLE_EXEC jekyll build $INCREMENTAL_FLAG $FUTURE_FLAG $DRAFTS_FLAG $UNPUBLISHED_FLAG $VERBOSE_FLAG $STRICT_FRONT_MATTER_FLAG $SAFE_FLAG $TRACE_FLAG $JKLSRV_CUSTOM_ARGS
fi

if [ "$NOVA_TASK_NAME" = "clean" ] ; then
	$BUNDLE_EXEC jekyll clean $JKLSRV_CUSTOM_ARGS
fi

